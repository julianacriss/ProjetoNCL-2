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
		<port component="script" id="pInicio"/>
		<media descriptor="dScript" id="script" src="script.lua">
			<property name="green"/>
			<property name="red"/>
			<property name="yellow"/>			
		</media>
		<media descriptor="dTitulo" id="titulo" src="media/Titulo.txt">
			<property name="fontSize" value="20"/>
		</media>
		<media descriptor="dPlay" id="imgPlay" src="media/play.png"/>
		<media descriptor="dPause" id="imgPause" src="media/pause.png"/>
		<media descriptor="dStop" id="imgStop" src="media/stop.png"/>
		<media descriptor="dVideo" id="video" src="media/video1.mp4"/>
		<!-- Links para Inicio e Fim -->
		<link id="IniciaTudo" xconnector="conn#onBeginStartN">
			<bind component="script" role="onBegin"/>
			<bind component="video" role="start"/>
			<bind component="imgPlay" role="start"/>
			<bind component="titulo" role="start"/>
		</link>
		<link id="StopAll" xconnector="conn#onBeginStopN">
			<bind component="imgStop" role="onBegin"/>
			<bind component="titulo" role="stop">
				<bindParam name="delay" value="2s"/>
			</bind>
			<bind component="imgStop" role="stop">
				<bindParam name="delay" value="2s"/>
			</bind>
		</link>
		<!-- Links -->
		<link id="Stop" xconnector="conn#onBeginStopN">
			<bind component="imgStop" role="onBegin"/>
			<bind component="video" role="stop"/>
			<bind component="imgPlay" role="stop"/>
			<bind component="imgPause" role="stop"/>
		</link>
		<link id="Pause" xconnector="conn#onBeginStopNPauseN">
			<bind component="imgPause" role="onBegin"/>
			<bind component="video" role="pause"/>
			<bind component="imgPlay" role="stop"/>
		</link>
		<link id="Resume" xconnector="conn#onBeginStopNResumeN">
			<bind component="imgPlay" role="onBegin"/>
			<bind component="video" role="resume"/>
			<bind component="imgPause" role="stop"/>
		</link>
		<!-- Links para Interacao com Teclas -->
		<link id="StopK" xconnector="conn#onKeySelectionStartN">
			<bind component="imgPlay" role="onSelection">
				<bindParam name="key" value="RED"/>
			</bind>
			<bind component="imgStop" role="start"/>
		</link>
		<link id="Stop2K" xconnector="conn#onKeySelectionStartN">
			<bind component="imgPause" role="onSelection">
				<bindParam name="key" value="RED"/>
			</bind>
			<bind component="imgStop" role="start"/>
		</link>
		<link id="PauseK" xconnector="conn#onKeySelectionStartN">
			<bind component="imgPlay" role="onSelection">
				<bindParam name="key" value="YELLOW"/>
			</bind>
			<bind component="imgPause" role="start"/>
		</link>
		<link id="ResumeK" xconnector="conn#onKeySelectionStartN">
			<bind component="imgPause" role="onSelection">
				<bindParam name="key" value="GREEN"/>
			</bind>
			<bind component="imgPlay" role="start"/>
		</link>
		<!-- Links para Interacao via MPEG-U -->
      	<link id="StopU" xconnector="conn#onEndAttributionStart">
          <bind role="onEndAttribution" component="script" interface="red"/>
          <bind role="start" component="imgStop" />
      	</link>
      	<link id="PauseU" xconnector="conn#onEndAttributionStart">
          <bind role="onEndAttribution" component="script" interface="yellow"/>
          <bind role="start" component="imgPause" />
      	</link>
      	<link id="PlayU" xconnector="conn#onEndAttributionStart">
          <bind role="onEndAttribution" component="script" interface="green"/>
          <bind role="start" component="imgPlay" />
      	</link>
	</body>
</ncl>
