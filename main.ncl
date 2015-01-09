<ncl id="exemplo" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
	<head>
		<regionBase id="regionBase1">
			<region height="100.00%" id="rgTV" left="0.00%" top="0.00%" width="100.00%" zIndex="1">
				<region height="10.00%" id="rgTitulo" left="0.00%" top="0.00%" width="100.00%" zIndex="2"/>
				<region height="90.00%" id="rgVideo" left="0.00%" top="10.00%" width="80.00%" zIndex="2"/>
				<region height="90.00%" id="rgMenu" left="80.00%" top="10.00%" width="20.00%" zIndex="2"/>
				<region height="15.00%" id="rgPlay" left="85.00%" top="10.00%" width="10.00%" zIndex="3"/>
				<region height="15.00%" id="rgPause" left="85.00%" top="40.00%" width="10.00%" zIndex="3"/>
				<region height="15.00%" id="rgStop" left="85.00%" top="70.00%" width="10.00%" zIndex="3"/>
				<region height="0.00%" id="rgScript" left="90.00%" top="90.00%" width="0.00%" zIndex="0"/>
			</region>
		</regionBase>
		<descriptorBase id="descriptorBase1">
			<descriptor id="dTitulo" region="rgTitulo"/>
			<descriptor id="dVideo" region="rgVideo"/>
			<descriptor id="dMenu" region="rgMenu"/>
			<descriptor id="dPlay" region="rgPlay"/>
			<descriptor id="dPause" region="rgPause"/>
			<descriptor id="dStop" region="rgStop"/>
			<descriptor focusIndex="1" id="dScript" region="rgScript"/>
		</descriptorBase>
		<connectorBase id="connectorBase1">
			<importBase alias="conn" documentURI="connectors.ncl"/>
		</connectorBase>
	</head>
	<body id="body1">
		<port component="script" id="porta1"/>
		<media descriptor="dScript" id="script" src="script.lua"/>
		<media descriptor="dTitulo" id="titulo" src="media/Titulo.txt">
			<property name="fontSize" value="20"/>
		</media>
		<media descriptor="dPlay" id="imgPlay" src="media/play.png"/>
		<media descriptor="dPause" id="imgPause" src="media/pause.png"/>
		<media descriptor="dStop" id="imgStop" src="media/stop.png"/>
		<media descriptor="dVideo" id="video" src="media/video1.mp4"/>
		<link id="IniciaTudo" xconnector="conn#onBeginStartN">
			<bind component="script" role="onBegin"/>
			<bind component="video" role="start"/>
			<bind component="imgPlay" role="start"/>
			<bind component="titulo" role="start"/>
		</link>
		<link id="Pause" xconnector="conn#onPauseNPauseNStartNStopN">
			<bind component="script" role="onPause"/>
			<bind component="video" role="pause"/>
			<bind component="imgPause" role="start"/>
			<bind component="imgPlay" role="stop"/>
		</link>
		<link id="Resume" xconnector="conn#onResumeNResumeNStopNStartN">
			<bind component="script" role="onResume"/>
			<bind component="video" role="resume"/>
			<bind component="imgPlay" role="start"/>
			<bind component="imgPause" role="stop"/>
		</link>
		<link id="Stop" xconnector="conn#onEndNStopNPauseNStartN">
			<bind component="script" role="onEnd"/>
			<bind component="imgPlay" role="stop"/>
			<bind component="imgPause" role="stop"/>
			<bind component="video" role="pause"/>
			<bind component="imgStop" role="start"/>
		</link>
		<link id="StopAll" xconnector="conn#onEndNStopN">
			<bind component="script" role="onEnd"/>
			<bind component="imgPlay" role="stop"/>
			<bind component="imgPause" role="stop"/>
			<bind component="video" role="stop"/>
			<bind component="imgStop" role="stop"/>
			<bind component="titulo" role="stop"/>
		</link>
	</body>
</ncl>
