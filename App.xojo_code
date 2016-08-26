#tag Class
Protected Class App
Inherits ConsoleApplication
	#tag Event
		Function Run(args() as String) As Integer
		  GPIO.SetupGPIO
		  
		  // 4番ピンをアウトプットに指定します
		  Const kLEDPin = 4
		  
		  // ピンのモードを変更します
		  GPIO.PinMode(kLEDPin, GPIO.OUTPUT)
		  
		  // 処理を繰り返します
		  While True
		    // LEDを光らせます
		    GPIO.DigitalWrite(kLEDPin, GPIO.ON)
		    // 500ms待ちます
		    App.DoEvents(500)
		    
		    // LEDを消します
		    GPIO.DigitalWrite(kLEDPin, GPIO.OFF)
		    // 500ms待ちます
		    App.DoEvents(500)
		  Wend
		  
		End Function
	#tag EndEvent


End Class
#tag EndClass
