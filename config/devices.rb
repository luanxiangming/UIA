DEVICES = {
    android_device: {
        device: 'b86ec82', #VIVO X7
        # device: 'X2P0215921003304', #HUAWEI P8
        apk: 'binaries/app-vliveshow-release.apk'
    },
    ios_device: {
        device: '4815652d252ebcbb43bbfd13db16df0d9d2d2e72',#iPhone 5s
        endpoint: 'http://127.0.0.1:37265', #iPhone's IP
        codesign:'iPhone Developer: Oliver Luan (68TYA2777K)',
        app: 'binaries/VLiveShowUAT.app' #Running against simulator will use it
    },

}
