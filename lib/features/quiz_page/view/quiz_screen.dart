import 'dart:async';
import 'package:flutter/material.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';
import 'package:silk_road/core/shared_components/widgets/shared_buttons.dart';
import 'package:silk_road/features/quiz_page/view/quiz_overview_screen.dart';

import '../data/quiz_data.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 0;
  int timeLeft = 60;
  Timer? timer;
  List<int?> answers = List.filled(30, null);
  int visibleIndicators = 5;
  int middleIndex = 2;
  int score = 0;

  List<Map<String, dynamic>> questions = jangoBackEndQuestions;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (timeLeft > 0) {
          timeLeft--;
        } else {
          moveToNextQuestion();
        }
      });
    });
  }

  void moveToNextQuestion() {
    updateScore();
    if (currentQuestionIndex < questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
        timeLeft = 60;
      });
    } else {
      finishQuiz(); // Navigate
    }
  }

  void selectAnswer(int index) {
    setState(() {
      answers[currentQuestionIndex] = index;
    });
  }

  void updateScore() {
    if (answers[currentQuestionIndex] != null &&
        answers[currentQuestionIndex] ==
            questions[currentQuestionIndex]['correctAnswer']) {
      score++;
    }
  }

  void finishQuiz() {
    timer?.cancel();
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>QuizOverviewScreen(arrowButton: true,)));
  }

  List<int> getVisibleIndicatorIndices() {
    if (currentQuestionIndex <= middleIndex) {
      return List.generate(visibleIndicators, (index) => index);
    } else if (currentQuestionIndex >=
        questions.length - (visibleIndicators - middleIndex - 1)) {
      return List.generate(visibleIndicators,
          (index) => questions.length - visibleIndicators + index);
    } else {
      return List.generate(visibleIndicators,
          (index) => currentQuestionIndex - middleIndex + index);
    }
  }

  @override
  Widget build(BuildContext context) {
    List<int> visibleIndices = getVisibleIndicatorIndices();

    return Scaffold(
      backgroundColor: const Color(0xffFBF6F0),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: (66 / 932) * ScreenUtils.screenHeight(context)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                ArrowBackButton(onTap: () {
                }),
                SizedBox(width: (72 / 430) * ScreenUtils.screenWidth(context)),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(
                      color: const Color(0xffEDCEA4),

                    ),
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: (18 / 430) * ScreenUtils.screenWidth(context),
                    vertical: (6 / 932) * ScreenUtils.screenHeight(context)),
                    child: Row(
                      children: [
                        Icon(
                          Icons.access_time_filled_sharp,
                          size: (28 / 932) * ScreenUtils.screenHeight(context),
                        ),
                        SizedBox(
                            width: (14 / 430) * ScreenUtils.screenWidth(context)),
                        Text(
                          '00:${timeLeft.toString().padLeft(2, '0')}',
                          style: TextStyle(
                              fontSize:
                                  (20 / 932) * ScreenUtils.screenHeight(context),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: (24 / 932) * ScreenUtils.screenHeight(context)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: visibleIndices.map((index) {
                bool isCurrent = index == currentQuestionIndex;
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: (5 / 430) * ScreenUtils.screenWidth(context)),
                  width: (60 / 430) * ScreenUtils.screenWidth(context),
                  height: (60 / 430) * ScreenUtils.screenWidth(context),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isCurrent ? const Color(0xffB27743) : (Colors.transparent),
                    border: Border.all(
                        color: const Color(0xffB27743),width: 2 ),
                  ),
                  child: Center(
                    child: Text(
                      '${index + 1}',
                      style: TextStyle(
                        color: isCurrent ? Colors.white : Colors.black,
                        fontSize: (20 / 932) * ScreenUtils.screenHeight(context)
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          SizedBox(height: (65 / 932) * ScreenUtils.screenHeight(context)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              '${currentQuestionIndex + 1}. ${questions[currentQuestionIndex]['question']}',
              style: TextStyle(fontSize: (20 / 932) * ScreenUtils.screenHeight(context), fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(height: (26 / 932) * ScreenUtils.screenHeight(context)),
          ...List.generate(
            questions[currentQuestionIndex]['options'].length,
            (index) => Padding(
              padding: EdgeInsets.symmetric(vertical:(14 / 932) * ScreenUtils.screenHeight(context),
                horizontal: (34 / 430) * ScreenUtils.screenWidth(context)
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: (14 / 430) * ScreenUtils.screenWidth(context),
                      vertical:(20 / 932) * ScreenUtils.screenHeight(context)),
                  elevation: 0,
                  foregroundColor: Colors.black,
                  backgroundColor: answers[currentQuestionIndex] == index
                      ? Colors.brown.shade100
                      : Colors.transparent,
                  side: BorderSide(color: Color(0xffB27743)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child:
                      Text(questions[currentQuestionIndex]['options'][index]
                          ,style: TextStyle(fontSize: (14 / 932) * ScreenUtils.screenHeight(context)),
                      ),
                ),
                onPressed: () => selectAnswer(index),
              ),
            ),
          ),
          Spacer(),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Stack(
                alignment: Alignment.center,
                children: [


                  SizedBox(
                    width: (62 / 430) * ScreenUtils.screenWidth(context),
                      height: (62 / 430) * ScreenUtils.screenWidth(context),
                      child: CircularProgressIndicator(color:  answers[currentQuestionIndex] != null
                          ?Colors.black: Colors.grey,value: 100,strokeWidth: 2,)),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: CircleBorder(),
                      padding: EdgeInsets.all((10 / 430) * ScreenUtils.screenWidth(context)),
                    ),
                    child: Icon(Icons.arrow_forward, color: Colors.white),
                    onPressed: answers[currentQuestionIndex] != null
                        ? moveToNextQuestion
                        : null,
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          Image.asset("assets/images/sahraa.png", width: ScreenUtils.screenWidth(context),)
        ],
      ),
    );
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }
}
