#!/bin/sh

java -Duser.dir=/fatjar/help-to-save-stub \
 -Dapplication.router=testOnlyDoNotUseInAppConf.Routes \
 -Dconfig.resource=application.conf -Xmx256m -Xms64m \
 -DProd.mongodb.uri=mongodb://mongo:27017/help-to-save-stub \
 -cp '/fatjar/help-to-save-stub/conf:/fatjar/help-to-save-stub/lib/*' \
 play.core.server.ProdServerStart

touch tail.target
tail -f tail.target
