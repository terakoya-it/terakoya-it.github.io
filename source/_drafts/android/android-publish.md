layout: post
title: "Androidの公開方法"
date: 2015-04-30 22:40:58
comments: true
tags: 
- Android Studio
categories: 
- Android Studio
---

Androidアプリの公開方法を詳しく解説しています。

<!-- more -->

## Generate Signed APK Wizard を起動

Android Studio のメニューから [ビルド] - [Generate Signed APK...] を選択します。

![](https://lh3.googleusercontent.com/-s_25Xk2Ebks/VLtJU9qdKOI/AAAAAAAALFU/wDNSC3ltaIU/w1098-h680-no/android-pub-01.jpg)

APK 作成対象のモジュールを選択して [Next]

![](https://lh5.googleusercontent.com/-XGdrIU3lOvA/VLtJold3mlI/AAAAAAAALDc/NYn8jj1vnUU/w1300-h836-no/android-pub-02.jpg)

Key storeを指定する画面になります。
今回はまだ作成していないので[Create new...]をクリックします。

![](https://lh3.googleusercontent.com/-iOR-joGnILc/VLtJyiIz1hI/AAAAAAAALDo/FDZ1fxY4mdY/w1300-h850-no/android-pub-03.jpg)

Key store を保存するフォルダを設定します。右端にある [...] をクリックします。

![](https://lh4.googleusercontent.com/-BWEMBR2AbQQ/VLtJ-UblDNI/AAAAAAAALDw/my8mphvYqig/w1300-h1246-no/android-pub-04.jpg)

Key store を保存するフォルダを選択し、Key store のファイル名を入力します。
※この Key store ファイルは今後も APK ファイルを作る際に必要になります。

![](https://lh6.googleusercontent.com/-U5K6Bdd6i_Y/VLtLJLsUuUI/AAAAAAAALFg/jt961oNK5Sc/w1300-h1628-no/android-pub-05.jpg)

先ほどの画面に戻ると、Key store の項目が埋まっています。続けてパスワードを入力します。
次に alias とそのパスワードを入力します。Validity は有効な年数を指定します。例では 50 年間有効にしました。
最後に Certificate の項目を入力します。全て空欄だと登録できません。

![](https://lh5.googleusercontent.com/-UHkit4OqGt0/VLtMrSYNGFI/AAAAAAAALEU/Nsw5qGBfxq8/w1300-h1258-no/android-pub-06.jpg)

入力が全て終わると最終的に以下の画面が表示されます。間違いがないことを確認して [Next] をクリックします。

![](![](https://lh5.googleusercontent.com/-UHkit4OqGt0/VLtMrSYNGFI/AAAAAAAALEU/Nsw5qGBfxq8/w1300-h1258-no/android-pub-06.jpg)

Master Password を入力する画面が表示されます。初めての場合は Master Password を登録する画面だったと思います。これはこのアプリに限らず、他のアプリの APK ファイルを作る際にも確認されるパスワードです。それを踏まえたパスワードを設定してください。

![](https://lh5.googleusercontent.com/-eWPw4SqBLjQ/VLtM2hl-IVI/AAAAAAAALEg/WuGGEBdT2PA/w1300-h840-no/android-pub-07.jpg)

いよいよ最後です。APK ファイルを保存するフォルダを設定します。今回は TransitionTest/app フォルダに APK ファイルを作成します。
[Build Type:] には debug や release などの種別を選択します。
[終了] ボタンで APK ファイルの作成が開始されます。

![](https://lh4.googleusercontent.com/-AAVtPwCnoXU/VLtNTZ740eI/AAAAAAAALE0/ATDrDF9VFig/w1298-h864-no/android-pub-09.jpg)

TransitionTest フォルダの直下に TransitionTest.jks という Key store が作成され、app フォルダ以下に app-release.apk という APK ファイルが作成されました。

![](https://lh4.googleusercontent.com/-CK6oldsDAls/VLtNibE7NTI/AAAAAAAALE8/1-Vs9FRgwEw/w1300-h528-no/android-pub-10.jpg)

![](https://lh6.googleusercontent.com/-sARGNFkXjtE/VLtNwAoVZUI/AAAAAAAALFE/UZotXtdJSqY/w1300-h514-no/android-pub-11.jpg)