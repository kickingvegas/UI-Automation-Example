
EXEC=instruments
TEMPLATE=/Developer/Platforms/iPhoneOS.platform/Developer/Library/Instruments/PlugIns/AutomationInstrument.bundle/Contents/Resources/Automation.tracetemplate
JSTEST=tests/uitest.js

DUT_DIR=${HOME}/Library/Application Support/iPhone Simulator/5.0/Applications/0788964C-F796-431F-8CC6-E8AEF117574A
DUT=${DUT_DIR}/uiaexample.app
UIARESULTSPATH=uitest.trace

go:
	mkdir -p ${UIARESULTSPATH}
	${EXEC} -t ${TEMPLATE} "${DUT}" -e UIASCRIPT ${JSTEST} -e UIARESULTSPATH ${UIARESULTSPATH}


clean:
	\rm -rf instrumentscli*.trace

