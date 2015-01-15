<ncl id="myNCLDocID">
	<head>
		<connectorBase id="connBaseId">
			<causalConnector id="onBeginStartN">
				<simpleCondition role="onBegin"/>
				<compoundAction operator="par">
					<simpleAction max="unbounded" qualifier="par" role="start"/>
				</compoundAction>
			</causalConnector>
			<causalConnector id="onBeginStartNDelay">
				<simpleCondition role="onBegin"/>
				<compoundAction delay="1s" operator="par">
					<simpleAction max="unbounded" qualifier="par" role="start"/>
				</compoundAction>
			</causalConnector>
			<causalConnector id="onBeginStop">
				<simpleCondition role="onBegin"/>
				<simpleAction role="stop"/>
			</causalConnector>
			<causalConnector id="onEndStart">
				<simpleCondition role="onEnd"/>
				<simpleAction role="start"/>
			</causalConnector>
			<causalConnector id="onKeySelectionStartNStopN">
				<connectorParam name="key"/>
				<simpleCondition key="$key" role="onSelection"/>
				<compoundAction operator="par">
					<simpleAction max="unbounded" min="unbounded" qualifier="par" role="stop"/>
					<simpleAction max="unbounded" min="unbounded" qualifier="par" role="start"/>
				</compoundAction>
			</causalConnector>
			<causalConnector id="onKeySelectionStartNStopNPauseN">
				<connectorParam name="key"/>
				<simpleCondition key="$key" role="onSelection"/>
				<compoundAction operator="par">
					<simpleAction max="unbounded" min="unbounded" qualifier="par" role="stop"/>
					<simpleAction max="unbounded" min="unbounded" qualifier="par" role="start"/>
					<simpleAction max="unbounded" min="unbounded" qualifier="par" role="pause"/>
				</compoundAction>
			</causalConnector>
			<causalConnector id="onKeySelectionStartNStopNResumeN">
				<connectorParam name="key"/>
				<simpleCondition key="$key" role="onSelection"/>
				<compoundAction operator="par">
					<simpleAction max="unbounded" min="unbounded" qualifier="par" role="stop"/>
					<simpleAction max="unbounded" min="unbounded" qualifier="par" role="start"/>
					<simpleAction max="unbounded" min="unbounded" qualifier="par" role="resume"/>
				</compoundAction>
			</causalConnector>
			<causalConnector id="onEndNStopN">
				<compoundCondition operator="or">
					<simpleCondition max="unbounded" qualifier="or" role="onEnd"/>
				</compoundCondition>
				<compoundAction operator="par">
					<simpleAction max="unbounded" qualifier="par" role="stop"/>
				</compoundAction>
			</causalConnector>
			<causalConnector id="onKeySelectionStartN">
				<connectorParam name="key"/>
				<simpleCondition key="$key" role="onSelection"/>
				<compoundAction operator="par">
					<simpleAction max="unbounded" min="unbounded" qualifier="par" role="start"/>
				</compoundAction>
			</causalConnector>
			<causalConnector id="onKeySelectionStopN">
				<connectorParam name="key"/>
				<simpleCondition key="$key" role="onSelection"/>
				<compoundAction operator="par">
					<simpleAction max="unbounded" min="unbounded" qualifier="par" role="stop"/>
				</compoundAction>
			</causalConnector>
			<causalConnector id="onKeySelectionPauseN">
				<connectorParam name="key"/>
				<simpleCondition key="$key" role="onSelection"/>
				<compoundAction operator="par">
					<simpleAction max="unbounded" min="unbounded" qualifier="par" role="pause"/>
				</compoundAction>
			</causalConnector>
			<causalConnector id="onKeySelectionResumeN">
				<connectorParam name="key"/>
				<simpleCondition key="$key" role="onSelection"/>
				<compoundAction operator="par">
					<simpleAction max="unbounded" min="unbounded" qualifier="par" role="resume"/>
				</compoundAction>
			</causalConnector>
			<causalConnector id="onResumeNResumeNStopNStartN">
				<compoundCondition operator="or">
					<simpleCondition max="unbounded" qualifier="or" role="onResume"/>
				</compoundCondition>
				<compoundAction operator="par">
					<simpleAction max="unbounded" qualifier="par" role="resume"/>
					<simpleAction max="unbounded" qualifier="par" role="stop"/>
					<simpleAction max="unbounded" qualifier="par" role="start"/>
				</compoundAction>
			</causalConnector>
			<causalConnector id="onPauseNPauseNStartNStopN">
				<compoundCondition operator="or">
					<simpleCondition max="unbounded" qualifier="or" role="onPause"/>
				</compoundCondition>
				<compoundAction operator="par">
					<simpleAction max="unbounded" qualifier="par" role="pause"/>
					<simpleAction max="unbounded" qualifier="par" role="stop"/>
					<simpleAction max="unbounded" qualifier="par" role="start"/>
				</compoundAction>
			</causalConnector>
			<causalConnector id="onBeginStopN">
				<connectorParam name="delay"/>
				<simpleCondition role="onBegin"/>
				<compoundAction operator="par">
					<simpleAction max="unbounded" qualifier="par" role="stop" delay="$delay"/>
				</compoundAction>
			</causalConnector>
			<causalConnector id="onEndNStopNPauseNStartN">
				<compoundCondition operator="or">
					<simpleCondition max="unbounded" qualifier="or" role="onEnd"/>
				</compoundCondition>
				<compoundAction operator="par">
					<simpleAction max="unbounded" qualifier="par" role="pause"/>
					<simpleAction max="unbounded" qualifier="par" role="stop"/>
					<simpleAction max="unbounded" qualifier="par" role="start"/>
				</compoundAction>
			</causalConnector>
			<causalConnector id="onEndNStopNStartN">
				<compoundCondition operator="or">
					<simpleCondition max="unbounded" qualifier="or" role="onEnd"/>
				</compoundCondition>
				<compoundAction operator="par">
					<simpleAction max="unbounded" qualifier="par" role="stop"/>
					<simpleAction max="unbounded" qualifier="par" role="start"/>
				</compoundAction>
			</causalConnector>
		</connectorBase>
	</head>
</ncl>
