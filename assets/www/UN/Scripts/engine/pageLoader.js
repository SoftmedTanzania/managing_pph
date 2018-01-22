//--------------------------------------------*************loadPages*******************-----------------------------------------
    //Reaseon: Below given funtions has the list of number of pages function that are used in the course. the user needs to add the function name if any new page is addded.
    function loadPages(template, topicData, topicTemplateId, templateAudio,USERSTATE) {
	
        var highestTimeoutId = setTimeout(";");
        for (var i = 0; i < highestTimeoutId; i++) {
            if (i != idTimerTemp) {
                clearTimeout(i);
            }
        }
		//$('.breadcrumbs').show();
		$('.module-topic').css('visibility','visible');
        $(function() {
            $('[data-toggle="tooltip"]').tooltip()
        });

        if (is_touch_device()) {
            $(".reveal-modal").css('display', 'none');
            $(".reveal-modal").css('visibility', 'hidden');
        }
		
		
		$('.transcript_text').html(topicData.transcript);
		
        /*$('.LoaderAnimation').css('display', 'none');
        $('.overlayBlack').css('display', 'none');
        $('.LoaderAnimation').hide()
        $('.overlayBlack').hide()
		*/
		
         if (topicTemplateId == "010101-01.html") {
            make010101_01(template, topicData);
        } else if (topicTemplateId == "010101-02.html") {
            make010101_02(template, topicData, USERSTATE);
        } else if (topicTemplateId == "010101-03.html") {
            make010101_03(template, topicData);
        } else if (topicTemplateId == "010101-04.html") {
            make010101_04(template, topicData);
        } else if (topicTemplateId == "010101-05.html") {
            make010101_05(template, topicData);
        } else if (topicTemplateId == "010101-06.html") {
            make010101_06(template, topicData);
        } else if (topicTemplateId == "010101-07.html") {
            make010101_07(template, topicData);
        } else if (topicTemplateId == "010101-08.html") {
            make010101_08(template, topicData);
        } else if (topicTemplateId == "010101-09.html") {
            make010101_09(template, topicData, USERSTATE);
		} else if (topicTemplateId == "010102-01.html") {
            make010102_01(template, topicData, USERSTATE);
		} else if (topicTemplateId == "010102-02.html") {
            make010102_02(template, topicData, USERSTATE);
		} else if (topicTemplateId == "010102-03.html") {
            make010102_03(template, topicData);
		} else if (topicTemplateId == "010102-04.html") {
            make010102_04(template, topicData, USERSTATE);
		} else if (topicTemplateId == "010102-05.html") {
            make010102_05(template, topicData);
		} else if (topicTemplateId == "010102-06.html") {
            make010102_06(template, topicData, USERSTATE);
		} else if (topicTemplateId == "010102-07.html") {
            make010102_07(template, topicData, USERSTATE);
		} else if (topicTemplateId == "010102-08.html") {
            make010102_08(template, topicData);
		} else if (topicTemplateId == "010102-09.html") {
            make010102_09(template, topicData, USERSTATE);
		} else if (topicTemplateId == "010102-10.html") {
            make010102_10(template, topicData, USERSTATE);
		} else if (topicTemplateId == "010102-11.html") {
            make010102_11(template, topicData, USERSTATE);
		} else if (topicTemplateId == "010102-12.html") {
            make010102_12(template, topicData);
		} else if (topicTemplateId == "010102-13.html") {
            make010102_13(template, topicData);
		} else if (topicTemplateId == "010102-14.html") {
            make010102_14(template, topicData, USERSTATE);
		} else if (topicTemplateId == "010102-15.html") {
            make010102_15(template, topicData);
		} else if (topicTemplateId == "010102-16.html") {
            make010102_16(template, topicData);
		} else if (topicTemplateId == "010102-17.html") {
            make010102_17(template, topicData);
		} else if (topicTemplateId == "010102-18.html") {
            make010102_18(template, topicData);
		} else if (topicTemplateId == "010102-19.html") {
            make010102_19(template, topicData);
		} else if (topicTemplateId == "010102-20.html") {
            make010102_20(template, topicData);
		} else if (topicTemplateId == "010102-21.html") {
            make010102_21(template, topicData);
		} else if (topicTemplateId == "010102-22.html") {
            make010102_22(template, topicData);
		} else if (topicTemplateId == "010102-23.html") {
            make010102_23(template, topicData);
		} else if (topicTemplateId == "010102-24.html") {
            make010102_24(template, topicData);
		} else if (topicTemplateId == "010102-25.html") {
            make010102_25(template, topicData);
		} else if (topicTemplateId == "010102-26.html") {
            make010102_26(template, topicData);
		} else if (topicTemplateId == "010102-27.html") {
            make010102_27(template, topicData);
		} else if (topicTemplateId == "010102-28.html") {
            make010102_28(template, topicData);
		} else if (topicTemplateId == "010102-29.html") {
            make010102_29(template, topicData);
		} else if (topicTemplateId == "010102-30.html") {
            make010102_30(template, topicData, USERSTATE);
		} else if (topicTemplateId == "010102-31.html") {
            make010102_31(template, topicData);
		} else if (topicTemplateId == "010102-32.html") {
            make010102_32(template, topicData);
		} else if (topicTemplateId == "010102-33.html") {
            make010102_33(template, topicData);
		} else if (topicTemplateId == "010102-34.html") {
            make010102_34(template, topicData);
		} else if (topicTemplateId == "010102-35.html") {
            make010102_35(template, topicData);
		} else if (topicTemplateId == "010102-36.html") {
            make010102_36(template, topicData, USERSTATE);
		} else if (topicTemplateId == "010102-37.html") {
            make010102_37(template, topicData);
		} else if (topicTemplateId == "010102-38.html") {
            make010102_38(template, topicData);
		} else if (topicTemplateId == "010102-39.html") {
            make010102_39(template, topicData);
		} else if (topicTemplateId == "010102-40.html") {
            make010102_40(template, topicData);
        } else if (topicTemplateId == "010102-41.html") {
            make010102_41(template, topicData);
        } else if (topicTemplateId == "010102-42.html") {
            make010102_42(template, topicData);
        } else if (topicTemplateId == "010102-43.html") {
            make010102_43(template, topicData);
        } else if (topicTemplateId == "010102-44.html") {
            make010102_44(template, topicData);
        } else if (topicTemplateId == "010102-45.html") {
            make010102_45(template, topicData, USERSTATE);
        } else if (topicTemplateId == "010102-46.html") {
            make010102_46(template, topicData);
        } else if (topicTemplateId == "010102-47.html") {
            make010102_47(template, topicData, USERSTATE);
        }  else if (topicTemplateId == "010103-01.html") {
            make010103_01(template, topicData, USERSTATE);
        } else if (topicTemplateId == "010103-02.html") {
            make010103_02(template, topicData, USERSTATE);
        } else if (topicTemplateId == "010103-03.html") {
            make010103_03(template, topicData);
		} else if(topicTemplateId=="MCQWithSingleScenarioRadio.html"){
			makeMCQWithSingleScenarioRadio(template,topicData);
        } else {
            $(".template-container .content #container").html(Handlebars.compile(String(template))(String(topicData)));
        }
		
		

	}
	
	