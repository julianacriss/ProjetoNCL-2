<ncl id="myNCLDocID">
	<head>
		<connectorBase id="connBaseId">
			<causalConnector id="onBeginStartN">
				<simpleCondition role="onBegin">
				</simpleCondition>
				<compoundAction operator="par">
					<simpleAction max="unbounded" qualifier="par" role="start">
					</simpleAction>
				</compoundAction>
			</causalConnector>
			<causalConnector id="onBeginStartNDelay">
				<simpleCondition role="onBegin">
				</simpleCondition>
				<compoundAction delay="1s" operator="par">
					<simpleAction max="unbounded" qualifier="par" role="start">
					</simpleAction>
				</compoundAction>
			</causalConnector>
			<causalConnector id="onBeginStop">
				<simpleCondition role="onBegin">
				</simpleCondition>
				<simpleAction role="stop">
				</simpleAction>
			</causalConnector>
			<causalConnector id="onEndStart">
				<simpleCondition role="onEnd">
				</simpleCondition>
				<simpleAction role="start">
				</simpleAction>
			</causalConnector>
			<causalConnector id="onKeySelectionStartNStopN">
				<connectorParam name="key">
				</connectorParam>
				<simpleCondition key="$key" role="onSelection">
				</simpleCondition>
				<compoundAction operator="par">
					<simpleAction max="unbounded" min="unbounded" qualifier="par" role="stop">
					</simpleAction>
					<simpleAction max="unbounded" min="unbounded" qualifier="par" role="start">
					</simpleAction>
				</compoundAction>
			</causalConnector>
			<causalConnector id="onEndNStopN">
				<compoundCondition operator="or">
					<simpleCondition max="unbounded" qualifier="or" role="onEnd">
					</simpleCondition>
				</compoundCondition>
				<compoundAction operator="par">
					<simpleAction max="unbounded" qualifier="par" role="stop">
					</simpleAction>
				</compoundAction>
			</causalConnector>
			<causalConnector id="onKeySelectionStartN">
				<connectorParam name="key">
				</connectorParam>
				<simpleCondition key="$key" role="onSelection">
				</simpleCondition>
				<compoundAction operator="par">
					<simpleAction max="unbounded" min="unbounded" qualifier="par" role="start">
					</simpleAction>
				</compoundAction>
			</causalConnector>
			<causalConnector id="onKeySelectionStopN">
				<connectorParam name="key">
				</connectorParam>
				<simpleCondition key="$key" role="onSelection">
				</simpleCondition>
				<compoundAction operator="par">
					<simpleAction max="unbounded" min="unbounded" qualifier="par" role="stop">
					</simpleAction>
				</compoundAction>
			</causalConnector>
			<causalConnector id="onResumeNResumeNStopNStartN">
				<compoundCondition operator="or">
					<simpleCondition max="unbounded" qualifier="or" role="onResume">
					</simpleCondition>
				</compoundCondition>
				<compoundAction operator="par">
					<simpleAction max="unbounded" qualifier="par" role="resume">
					</simpleAction>
					<simpleAction max="unbounded" qualifier="par" role="stop">
					</simpleAction>
					<simpleAction max="unbounded" qualifier="par" role="start">
					</simpleAction>
				</compoundAction>
			</causalConnector>
			<causalConnector id="onPauseNPauseNStartNStopN">
				<compoundCondition operator="or">
					<simpleCondition max="unbounded" qualifier="or" role="onPause">
					</simpleCondition>
				</compoundCondition>
				<compoundAction operator="par">
					<simpleAction max="unbounded" qualifier="par" role="pause">
					</simpleAction>
					<simpleAction max="unbounded" qualifier="par" role="stop">
					</simpleAction>
					<simpleAction max="unbounded" qualifier="par" role="start">
					</simpleAction>
				</compoundAction>
			</causalConnector>
			<causalConnector id="onBeginSopN">
				<simpleCondition role="onBegin">
				</simpleCondition>
				<compoundAction operator="par">
					<simpleAction max="unbounded" qualifier="par" role="stop">
					</simpleAction>
				</compoundAction>
			</causalConnector>
			<causalConnector id="onEndNStopNPauseNStartN">
				<compoundCondition operator="or">
					<simpleCondition max="unbounded" qualifier="or" role="onEnd">
					</simpleCondition>
				</compoundCondition>
				<compoundAction operator="par">
					<simpleAction max="unbounded" qualifier="par" role="pause">
					</simpleAction>
					<simpleAction max="unbounded" qualifier="par" role="stop">
					</simpleAction>
					<simpleAction max="unbounded" qualifier="par" role="start">
					</simpleAction>
				</compoundAction>
			</causalConnector>
		</connectorBase>
	</head>
</ncl>
