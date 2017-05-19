(function ($) {
    $.fn.jquizzy = function (settings) {
        var defaults = {
            questions: null,
            startImg: '../img/start.gif',
            endText: '已结束!',
            shortURL: null,
            sendResultsURL: null
        };
        var config = $.extend(defaults, settings);
        if (config.questions === null) {
            $(this).html('<div class="intro-container slide-container"><h2 class="qTitle">Failed to parse questions.</h2></div>');
            return;
        }
        var superContainer = $(this),
            answers = [],
            introFob = '	<div class="intro-container slide-container"><a class="nav-start" href="#">请认真完成本次测验。<br/>测验时间：45分钟<br/><br/><span><img src="' + config.startImg + '"></span></a></div>	',
            exitFob = '<div class="results-container slide-container"><div class="question-number">' + config.endText + '</div><div class="result-keeper"></div></div><div class="notice">请选择一个选项！</div><div class="progress-keeper" ><div class="progress"></div></div>',
            contentFob = '',
            questionsIteratorIndex,
            answersIteratorIndex;
        superContainer.addClass('main-quiz-holder');
        for (questionsIteratorIndex = 0; questionsIteratorIndex < config.questions.length; questionsIteratorIndex++) {
            contentFob += '<div class="slide-container"><div class="question-number">' + (questionsIteratorIndex + 1) + '/' + config.questions.length + '</div><div class="question">' + config.questions[questionsIteratorIndex].question + '</div><ul class="answers">';
            for (answersIteratorIndex = 0; answersIteratorIndex < config.questions[questionsIteratorIndex].answers.length; answersIteratorIndex++) {
                contentFob += '<li>' + config.questions[questionsIteratorIndex].answers[answersIteratorIndex] + '</li>';
            }
            contentFob += '</ul><div class="nav-container">';
            if (questionsIteratorIndex !== 0) {
                contentFob += '<div class="prev"><a class="nav-previous" href="#">&lt; 上一题</a></div>';
            }
            if (questionsIteratorIndex < config.questions.length - 1) {
                contentFob += '<div class="next"><a class="nav-next" href="#">下一题 &gt;</a></div>';
            } else {
                contentFob += '<div class="next final"><a class="nav-show-result" href="#">完成</a></div>';
            }
            contentFob += '</div></div>';
            answers.push(config.questions[questionsIteratorIndex].correctAnswer);
        }
        superContainer.html(introFob + contentFob + exitFob);
        var progress = superContainer.find('.progress'),
            progressKeeper = superContainer.find('.progress-keeper'),
            notice = superContainer.find('.notice'),
            progressWidth = progressKeeper.width(),
            userAnswers = [],
            questionLength = config.questions.length,
            slidesList = superContainer.find('.slide-container');
        //console.log(answers[0]);

        function checkAnswers() {
            var resultArr = [],
            flag = false;
            for (i = 0; i < answers.length; i++) {
                if (answers[i] == userAnswers[i]) {
                    flag = true;
                } else {
                    flag = false;
                }
                resultArr.push(flag);
            }
            return resultArr;

        }

        function roundReloaded(num, dec) {
            var result = Math.round(num * Math.pow(10, dec)) / Math.pow(10, dec);
            return result;
        }

        progressKeeper.hide();
        notice.hide();
        slidesList.hide().first().fadeIn(500);
        superContainer.find('li').click(function () {
            var thisLi = $(this);
            if (thisLi.hasClass('selected')) {
                thisLi.removeClass('selected');
            } else {
                thisLi.parents('.answers').children('li').removeClass('selected');
                thisLi.addClass('selected');
            }
        });
        superContainer.find('.nav-start').click(function () {
            $(this).parents('.slide-container').fadeOut(500,
                function () {
                    $(this).next().fadeIn(500);
                    progressKeeper.fadeIn(500);
                });
            return false;
        });
        superContainer.find('.next').click(function () {
            if ($(this).parents('.slide-container').find('li.selected').length === 0) {
                notice.fadeIn(300);
                return false;
            }
            notice.hide();
            $(this).parents('.slide-container').fadeOut(500,
                function () {
                    $(this).next().fadeIn(500);
                });
            progress.animate({
                width: progress.width() + Math.round(progressWidth / questionLength)
            },
                500);
            return false;
        });
        superContainer.find('.prev').click(function () {
            notice.hide();
            $(this).parents('.slide-container').fadeOut(500,
                function () {
                    $(this).prev().fadeIn(500);
                });
            progress.animate({
                width: progress.width() - Math.round(progressWidth / questionLength)
            },
                500);
            return false;
        });
        superContainer.find('.final').click(function () {
            if ($(this).parents('.slide-container').find('li.selected').length === 0) {
                notice.fadeIn(300);
                //console.log("final");
                return false;
            }
            superContainer.find('li.selected').each(function (index) {
                userAnswers.push($(this).parents('.answers').children('li').index($(this).parents('.answers').find('li.selected')) + 1);
            });

            progressKeeper.hide();
            var results = checkAnswers(),
                resultSet = '',
                trueCount = 0,
                score,
                url;
            if (config.shortURL === null) {
                config.shortURL = window.location
            }
            for (var i = 0, toLoopTill = results.length; i < toLoopTill; i++) {
                if (results[i] === true) {
                    trueCount++;
                    isCorrect = true;
                }
                resultSet += '<div class="result-row">' + (results[i] === true ? "<div class='correct'>#" + (i + 1) + "<span></span></div>" : "<div class='wrong'>#" + (i + 1) + "<span></span></div>");
                resultSet += '<div class="resultsview-qhover">' + config.questions[i].question;
                resultSet += "<ul>";
                for (answersIteratorIndex = 0; answersIteratorIndex < config.questions[i].answers.length; answersIteratorIndex++) {
                    var classestoAdd = '';
                    if (config.questions[i].correctAnswer == answersIteratorIndex + 1) {
                        classestoAdd += 'right';
                    }
                    if (userAnswers[i] == answersIteratorIndex + 1) {
                        classestoAdd += ' selected';
                    }
                    resultSet += '<li class="' + classestoAdd + '">' + config.questions[i].answers[answersIteratorIndex] + '</li>';
                }
                resultSet += '</ul></div></div>';
            }

            //score = roundReloaded(trueCount / questionLength * 100, 2); 百分制，有n道题，平均每题100/n分。会产生小数
            score = 10 * trueCount;//每题10分
            //var userid = "<%=Session["ID"].ToString()%>";
            $.ajax({
                type: "post",
                url: "../Student/handler/Exam.ashx",
                data: { s1: score },
                success: function (msg) {
                    //1 分数记录成功
                    if (msg == 1) {
                        resultSet = '<h2 class="qTitle">您已做完本试题,您的分数是 ' + score + '</h2>' + resultSet + '<a href="Default.aspx">返回首页</a>' + '<div class="jquizzy-clear"></div>';
                        superContainer.find('.result-keeper').html(resultSet).show(500);
                        superContainer.find('.resultsview-qhover').hide();
                        superContainer.find('.result-row').hover(function () {
                            $(this).find('.resultsview-qhover').show();
                        },
            function () {
                $(this).find('.resultsview-qhover').hide();
            });
                        $(this).parents('.slide-container').fadeOut(500,
                            function () {
                                $(this).next().fadeIn(500);
                            });
                        //跳转
                        //location.href = "index.aspx";
                    } else {
                        resultSet = '<h2 class="qTitle">发生了未知错误</h2>' + resultSet + '<div class="jquizzy-clear"></div>';
                    }
                },
                error: function () {
                    resultSet = '<h2 class="qTitle">服务器内部发生错误</h2>' + resultSet + '<div class="jquizzy-clear"></div>';
                }
            })

            return false;

        });
    };
})(jQuery);