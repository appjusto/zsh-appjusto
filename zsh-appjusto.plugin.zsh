# general
alias aj-cd="cd $APPJUSTO_DIR"
# TODO: tmux
alias aj-session="aj-cd-admin && split_tab 'aj-cd-admin; aj-admin-start' && split_tab 'aj-cd-app; aj-app-consumer' && split_tab aj-cd-app-clone && split_tab aj-cd && split_tab 'aj-cd-fb; aj-fb-start' && split_tab aj-cd-fb && split_tab aj-cd-types"

# app
alias aj-cd-app="aj-cd && cd ./app"
alias aj-cd-app-clone="aj-cd && cd ./app-clone"
alias aj-app-courier="FLAVOR=courier FIREBASE_EMULATOR=true expo start -c"
alias aj-app-courier-live="FLAVOR=courier expo start"
alias aj-app-consumer="FLAVOR=consumer FIREBASE_EMULATOR=true expo start -c"
alias aj-app-consumer-live="FLAVOR=consumer expo start"
alias aj-app-login-ios="xcrun simctl openurl booted \"exp://$AJ_LOCAL_IP:19000/--/?link=$AJ_LINK\""
alias aj-app-login-android="adb shell am start -a \"android.intent.action.VIEW\" -d \"exp://$AJ_IP:19000/--/?link=$AJ_LINK\""
alias aj-app-clear-cache="watchman watch-del-all && rm -rf node_modules/ && rm -f package-lock.json && npm install"
alias aj-app-sync="rsync -va --delete $APPJUSTO_DIR/app/ $APPJUSTO_DIR/app-clone/ --exclude=\".expo/\" --exclude=\".git/*\""

# firebase-functions
alias aj-cd-fb="aj-cd && cd ./firebase-functions/functions"
alias aj-fb-start="firebase emulators:start --import=$APPJUSTO_DIR/firestore-data/current --export-on-exit"
alias aj-fb-update-config="firebase functions:config:get > .runtimeconfig.json"

# types
alias aj-cd-types="aj-cd && cd ./types"

# admin
alias aj-cd-admin="aj-cd && cd ./admin"
alias aj-admin-start="yarn start"
