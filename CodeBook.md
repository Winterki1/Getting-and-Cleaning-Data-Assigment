Code Book for Getting and Cleaning Data Assignment

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (denoted here with the suffix “(time)”) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm. 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequency domain signals (denoted here with the suffix “(freq)”). For full details on the experiment and methodology, please refer to http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


1 Subject: ID numbers (1:30) of 30 subjects within an age bracket of 19-48 years that participated in the experiment

2 Activity: One of six activities each subject engaged in during the experiment (Laying, Sitting, Standing, Walking, Walking_downstairs, Walking_upstairs) 

For each of the following measurements, the data set shows the average by subject and activity. With regards to units for each of the variables, note that the measurements were normalized and bounded within [-1,1]. 

3 BodyAcceleration_X_mean(time): mean value of the body acceleration along the phone’s X axis, time domain signal

4 BodyAcceleration_Y_mean(time): mean value of the body acceleration along the phone’s Y axis, time domain signal

5 BodyAcceleration_Z_mean(time): mean value of the body acceleration along the phone’s Z axis, time domain signal

6 BodyAcceleration_X_std(time): standard deviation of the body acceleration along the phone’s X axis, time domain signal

7 BodyAcceleration_Y_std(time): standard deviation of the body acceleration along the phone’s Y axis, time domain signal

8 BodyAcceleration_Z_std(time): standard deviation of the body acceleration along the phone’s Z axis, time domain signal

9 GravityAcceleration_X_mean(time): mean value of the gravity acceleration along the phone’s X axis, time domain signal

10 GravityAcceleration_Y_mean(time): mean value of the gravity acceleration along the phone’s Y axis, time domain signal

11 GravityAcceleration_Z_mean(time): mean value of the gravity acceleration along the phone’s Z axis, time domain signal
12 GravityAcceleration_X_std(time): standard deviation of the gravity acceleration along the phone’s X axis, time domain signal

13 GravityAcceleration_Y_std(time): standard deviation of the gravity acceleration along the phone’s Y axis, time domain signal

14 GravityAcceleration_Z_std(time): standard deviation of the gravity acceleration along the phone’s Z axis, time domain signal

15 BodyAccelerationJerk_X_mean(time): mean value of the body acceleration Jerk signal along the phone’s X axis, time domain signal

16 BodyAccelerationJerk_Y_mean(time): mean value of the body acceleration Jerk signal along the phone’s Y axis, time domain signal

17 BodyAccelerationJerk_Z_mean(time): mean value of the body acceleration Jerk signal along the phone’s Z axis, time domain signal

18 BodyAccelerationJerk_X_std(time): standard deviation of the body acceleration Jerk signal along the phone’s X axis, time domain signal

19 BodyAccelerationJerk_Y_std(time): standard deviation of the body acceleration Jerk signal along the phone’s Y axis, time domain signal

20 BodyAccelerationJerk_Z_std(time): standard deviation of the body acceleration Jerk signal along the phone’s Z axis, time domain signal

21 BodyGyro_X_mean(time): mean value of the body angular velocity along the phone’s X axis, time domain signal

22 BodyGyro_Y_mean(time): mean value of the body angular velocity along the phone’s Y axis, time domain signal

23 BodyGyro_Z_mean(time): mean value of the body angular velocity along the phone’s Z axis, time domain signal

24 BodyGyro_X_std(time): standard deviation of the body angular velocity along the phone’s X axis, time domain signal

25 BodyGyro_Y_std(time): standard deviation of the body angular velocity along the phone’s Y axis, time domain signal

26 BodyGyro_Z_std(time): standard deviation of the body angular velocity along the phone’s Z axis, time domain signal

27 BodyGyroJerk_X_mean(time): mean value of the body angular velocity Jerk signal along the phone’s X axis, time domain signal

28 BodyGyroJerk_Y_mean(time): mean value of the body angular velocity Jerk signal along the phone’s Y axis, time domain signal

29 BodyGyroJerk_Z_mean(time): mean value of the body angular velocity Jerk signal along the phone’s Z axis, time domain signal

30 BodyGyroJerk_X_std(time): standard deviation of the body angular velocity Jerk signal along the phone’s X axis, time domain signal

31 BodyGyroJerk_Y_std(time): standard deviation of the body angular velocity Jerk signal along the phone’s Y axis, time domain signal

32 BodyGyroJerk_Z_std(time): standard deviation of the body angular velocity Jerk signal along the phone’s Z axis, time domain signal

33 BodyAccelerationMagnitude_mean(time): mean value of the body acceleration magnitude using Euclidean norm, time domain signal

34 BodyAccelerationMagnitude_std(time): standard deviation of the body acceleration magnitude using Euclidean norm, time domain signal

35 GravityAccelerationMagnitude_mean(time): mean value of the gravity acceleration magnitude using Euclidean norm, time domain signal

36 GravityAccelerationMagnitude_std(time): standard deviation of the gravity acceleration magnitude using Euclidean norm, time domain signal

37 BodyAccelerationJerkMagnitude_mean(time): mean value of the body acceleration Jerk magnitude using Euclidean norm, time domain signal

38 BodyAccelerationJerkMagnitude_std(time): standard deviation of the body acceleration Jerk magnitude using Euclidean norm, time domain signal

39 BodyGyroMagnitude_mean(time): mean value of the body angular velocity magnitude using Euclidean norm, time domain signal

40 BodyGyroMagnitude_std(time): standard deviation of the body angular velocity magnitude using Euclidean norm, time domain signal

41 BodyGyroJerkMagnitude_mean(time): mean value of the body angular velocity Jerk magnitude using Euclidean norm, time domain signal

42 BodyGyroJerkMagnitude_std(time): standard deviation of the body angular velocity Jerk magnitude using Euclidean norm, time domain signal

43 BodyAcceleration_X_mean(freq): mean value of the body acceleration along the phone’s X axis, frequency domain signal

44 BodyAcceleration_Y_mean(freq): mean value of the body acceleration along the phone’s Y axis, frequency domain signal

45 BodyAcceleration_Z_mean(freq): mean value of the body acceleration along the phone’s Z axis, frequency domain signal

46 BodyAcceleration_X_std(freq): standard deviation of the body acceleration along the phone’s X axis, frequency domain signal

47 BodyAcceleration_Y_std(freq): standard deviation of the body acceleration along the phone’s Y axis, frequency domain signal

48 BodyAcceleration_Z_std(freq): standard deviation of the body acceleration along the phone’s Z axis, frequency domain signal

49 BodyAccelerationJerk_X_mean(freq): mean value of the body acceleration Jerk signal along the phone’s X axis, frequency domain signal

50 BodyAccelerationJerk_Y_mean(freq): mean value of the body acceleration Jerk signal along the phone’s Y axis, frequency domain signal

51 BodyAccelerationJerk_Z_mean(freq): mean value of the body acceleration Jerk signal along the phone’s Z axis, frequency domain signal

52 BodyAccelerationJerk_X_std(freq): standard deviation of the body acceleration Jerk signal along the phone’s X axis, frequency domain signal

53 BodyAccelerationJerk_Y_std(freq): standard deviation of the body acceleration Jerk signal along the phone’s Y axis, frequency domain signal

54 BodyAccelerationJerk_Z_std(freq): standard deviation of the body acceleration Jerk signal along the phone’s Z axis, frequency domain signal

55 BodyGyro_X_mean(freq): mean value of the body angular velocity along the phone’s X axis, frequency domain signal

56 BodyGyro_Y_mean(freq): mean value of the body angular velocity along the phone’s Y axis, frequency domain signal

57 BodyGyro_Z_mean(freq): mean value of the body angular velocity along the phone’s Z axis, frequency domain signal

58 BodyGyro_X_std(freq): standard deviation of the body angular velocity along the phone’s X axis, frequency domain signal

59 BodyGyro_Y_std(freq): standard deviation of the body angular velocity along the phone’s Y axis, frequency domain signal

60 BodyGyro_Z_std(freq): standard deviation of the body angular velocity along the phone’s Z axis, frequency domain signal

61 BodyAccelerationMagnitude_mean(freq): mean value of the body acceleration magnitude using Euclidean norm, frequency domain signal

62 BodyAccelerationMagnitude_std(freq): standard deviation of the body acceleration magnitude using Euclidean norm, frequency domain signal

63 BodyAccelerationJerkMagnitude_mean(freq): mean value of the body acceleration Jerk signal magnitude using Euclidean norm, frequency domain signal

64 BodyAccelerationJerkMagnitude_std(freq): standard deviation of the body acceleration Jerk signal magnitude using Euclidean norm, frequency domain signal

65 BodyGyroMagnitude_mean(freq): mean value of the body angular velocity magnitude using Euclidean norm, frequency domain signal

66 BodyGyroMagnitude_std(freq): standard deviation of the body angular velocity magnitude using Euclidean norm, frequency domain signal

67 BodyGyroJerkMagnitude_mean(freq): mean value of the body angular velocity Jerk signal magnitude using Euclidean norm, frequency domain signal

68 BodyGyroJerkMagnitude_std(freq): standard deviation of the body angular velocity Jerk signal magnitude using Euclidean norm, frequency domain signal

