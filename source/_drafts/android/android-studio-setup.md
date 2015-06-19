layout: post
title: "環境構築（Android Studio）"
date: 2015-04-30 22:40:58
comments: true
tags: 
- Android Studio
categories: 
- Android Studio
---

Androidの最新の開発環境を構築していきます。

<!-- more -->

## Android Studioインストール

Androidアプリ開発するツールであるAndroid Studioをインストールします。
まず、ブラウザで下記のURLにアクセスし、「Download the SDK」ボタンをクリックしてください。

<a href="https://developer.android.com/sdk/installing/studio.html" target="_blank">Android Stdioインストール</a>

![](https://lh6.googleusercontent.com/-jAZG6F_O3kU/VLHaZRDoEOI/AAAAAAAAKoY/WnaY03CXsAM/w1182-h776-no/Download_Android_Studio_and_SDK_Tools___Android_Developers.png)

次のページで「 I have read and agree with the above terms and conditions」のチェックボックスにチェックをし、Downloadボタンをクリックしてください。

![](https://lh4.googleusercontent.com/-6BNd5Vv6Clc/VLHbJt87I4I/AAAAAAAAKok/3hCVlAZ1gGo/w1182-h912-no/Download_Android_Studio_and_SDK_Tools___Android_Developers2.png)

ダウンロードが完了したら、下にあるダウンロードしたzipファイルをクリックして解凍し、下記の画面が立ち上がるので「Android Studio」を「アプリケーション」フォルダーにドラック＆ドロップしてください。移動が完了したらこの画面は消してください。

![](https://lh3.googleusercontent.com/-OG4e8xniYKc/VLHbuaN6sFI/AAAAAAAAKow/r07OCL59dT0/w1182-h856-no/Android_Studio_install.png)

Android Studioを起動する前にMacの「システム環境設定」→「セキュリティとプライバシー」の設定を変更しておきます。
「セキュリティとプライバシー」の画面の左下のアイコンをクリックして管理者権限のパスワードを入力して変更可の状態にし、「ダウンロードしたアプリケーションの実行許可」を「すべてのアプリケーションを許可」に変更します。

![](https://lh5.googleusercontent.com/-nq_iXdWShl4/U7j0ttka-JI/AAAAAAAAAC8/Ie522GIDa78/s640/android%25E3%2582%25A4%25E3%2583%25B3%25E3%2582%25B9%25E3%2583%2588%25E3%2583%25BC%25E3%2583%25AB%25EF%25BC%2595.png)

### Java not foundのエラーが出た場合は

下記の`Java not found`のエラー画面が表示された場合にはお使いのMacにJava実行環境がインストールされていません。

![](https://lh4.googleusercontent.com/-mqYV1C_BoUs/VLHccFQeHbI/AAAAAAAAKo8/og3GOrrBFOw/w1182-h454-no/android_studio_java_install.png)

下記をリンクをクリックしてJava実行環境をインストールしてください。

<a href="http://www.oracle.com/technetwork/java/javase/downloads/jdk7-downloads-1880260.html" target="_blank">Java SE Development Kit 7 Downloads</a>

Javaのダウンロードページにアクセスしたら下記の手順でJDKをダウロードしてください。

![](https://lh5.googleusercontent.com/-4iPSsbbLqa0/VLHfSisJtYI/AAAAAAAAKpc/osoGEju4DTI/w1182-h942-no/Java_SE_Development_Kit_7_-_Downloads___Oracle_Technology_Network___Oracle.png)

### Android Studioの起動

次に下記のような画面が表示されますので、そのまま「Next」をクリックしてください。

![](https://lh5.googleusercontent.com/-q1ug28tm7Vk/VLHds2Pk92I/AAAAAAAAKpM/wjZxyIjDmA8/w1182-h892-no/Android_Studio_Setup01.png)

次の画面も「Next」をクリックしてください。

![](https://lh3.googleusercontent.com/-Pv45M3ezLIY/VLHfvh7zHCI/AAAAAAAAKpo/E8iD6ecz0QY/w1182-h890-no/Android_Studio_Setup02.png)

Android SDKをインストールするための同意を求められますので、①〜⑤の手順でFinishボタンをクリックしてください。

![](https://lh3.googleusercontent.com/-CpsssuYjLjI/VLHgZSOU2xI/AAAAAAAAKp4/JymTOYdNj2M/w1180-h894-no/Android_Studio_Setup03.png)

Android SDKのダウンロード・インストールが開始します。完了するまで少々時間がかかります。

![](https://lh3.googleusercontent.com/-gKZS1JszIVU/VLHgm5XACxI/AAAAAAAAKqE/fd-4DwU6WHc/w1182-h892-no/Android_Studio_Setup04.png)

下記の画面が表示されたらAndroid SDKのインストールは完了です。

![](https://lh4.googleusercontent.com/-dGUjJT3YF10/VLHhZ3GTZXI/AAAAAAAAKqQ/a2rs379S8cI/w1182-h894-no/Android_Studio_Setup05.png)

## 環境構築（エミュレーター）

PC（Mac）上でAndroidアプリを動作確認するためにエミュレーターを作成します。「Welcome to Android Studio」の画面の「Start a new Android Studio project」をクリックします。

![](https://lh5.googleusercontent.com/-ybx-SL83REg/VLHi6eCxKyI/AAAAAAAAKqs/Ok8VuKrkua0/w1180-h914-no/Android_Studio_welcome_new_project.png)

次に下記の画面が表示されアプリ名などを設定できますが、今回はそのまま「Next」ボタンを押してください。

![](https://lh3.googleusercontent.com/-5IDVcLKpdt4/U7j93KkSC4I/AAAAAAAAAEs/LcSRcbH8-Sw/s800/%25E3%2582%25A8%25E3%2583%259F%25E3%2583%25A5%25E3%2583%25AC%25E3%2583%25BC%25E3%2582%25BF%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2591.png)

次に下記のような画面が現れますが、ここもなにも変更せずに「Next」ボタンを押してください。

![](https://lh6.googleusercontent.com/-9IPJI7U-Fk8/U7kAoWIf8UI/AAAAAAAAAFM/yxa6o1M6p90/s600/%25E3%2582%25A8%25E3%2583%259F%25E3%2583%25A5%25E3%2583%25AC%25E3%2583%25BC%25E3%2582%25BF%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2593.png)

次に下記のような画面が現れますが、ここもなにも変更せずに「Next」ボタンを押してください。

![](https://lh5.googleusercontent.com/-7zwePN75BGg/U7kApV56xZI/AAAAAAAAAFg/X1NrBhDGh4M/s600/%25E3%2582%25A8%25E3%2583%259F%25E3%2583%25A5%25E3%2583%25AC%25E3%2583%25BC%25E3%2582%25BF%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2594.png)

次に下記のような画面が現れますが、ここもなにも変更せずに「Finish」ボタンを押してください。

![](https://lh4.googleusercontent.com/-yQ6E1s7eRxQ/U7kApQJlOHI/AAAAAAAAAF8/cY7wypRmqec/s600/%25E3%2582%25A8%25E3%2583%259F%25E3%2583%25A5%25E3%2583%25AC%25E3%2583%25BC%25E3%2582%25BF%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2595.png)

次に下記のような画面が現れるので少々お待ちください。

![](https://lh6.googleusercontent.com/-XmazD29aOmQ/U7kApnKO3eI/AAAAAAAAAFk/YRzh7-GtjNg/s600/%25E3%2582%25A8%25E3%2583%259F%25E3%2583%25A5%25E3%2583%25AC%25E3%2583%25BC%25E3%2582%25BF%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2596.png)

次に下記のような画面が現れるので特になにもせずに「Close」ボタンを押してください。

![](https://lh6.googleusercontent.com/-U3ROPxb_mNA/U7kAqHec_8I/AAAAAAAAAF0/YQTDWjAAhe4/s600/%25E3%2582%25A8%25E3%2583%259F%25E3%2583%25A5%25E3%2583%25AC%25E3%2583%25BC%25E3%2582%25BF%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2597.png)

これでようやくプロジェクト画面が立ち上がりました。

![](https://lh3.googleusercontent.com/-cfzGwJLBun0/U7kAqWzI2wI/AAAAAAAAAF4/y4zTyEAO2D0/s600/%25E3%2582%25A8%25E3%2583%259F%25E3%2583%25A5%25E3%2583%25AC%25E3%2583%25BC%25E3%2582%25BF%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2598.png)

次にAndroid Studioのメニューバーの「Tools」を選択し、バー内にある「Android」を選択し、その奥にある「SDK Manager」をクリックします。

![](https://lh4.googleusercontent.com/-KCPtdqhBqok/U7kFfmvkhcI/AAAAAAAAAGg/07aPU-qV8kc/s600/%25E3%2582%25A8%25E3%2583%259F%25E3%2583%25A5%25E3%2583%25AC%25E3%2583%25BC%25E3%2582%25BF%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2599.png)

次に下記のような画面が表示されるので、下記の画面のようにチェックボックスにチェックを入れ、「Install ~packages...」をクリックしてください。

![](https://lh6.googleusercontent.com/-urCI8s0mp-I/U7pLOe96vuI/AAAAAAAAAH8/G3NoCUM59qc/s512/%25E3%2582%25A8%25E3%2583%259F%25E3%2583%25A5%25E3%2583%25AC%25E3%2583%25BC%25E3%2582%25BF%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2591%25EF%25BC%2597.png)


すると次のような画面が表示されるのでこのテキストに従ってクリックしてください。

![](https://lh3.googleusercontent.com/-miH_oDk2rFA/U7pLObkLjnI/AAAAAAAAAH4/4mVKg40U_fo/s600/%25E3%2582%25A8%25E3%2583%259F%25E3%2583%25A5%25E3%2583%25AC%25E3%2583%25BC%25E3%2582%25BF%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2591%25EF%25BC%2598.png)

インストールが完了しましたら下記のような画面に戻るので画面を閉じてください。
![](https://lh4.googleusercontent.com/-BUC6inAzRb0/U7kH2jMceyI/AAAAAAAAAG8/SAxctngqJb0/s600/%25E3%2582%25A8%25E3%2583%259F%25E3%2583%25A5%25E3%2583%25AC%25E3%2583%25BC%25E3%2582%25BF%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2591%25EF%25BC%2590.png)

次にエミュレータの設定を行います。
下記の画面に従って移動してください。

![](https://lh6.googleusercontent.com/-GP78a0dRtco/U7pRUs9lvyI/AAAAAAAAAMg/r9117ttHctc/s600/%25E3%2582%25A8%25E3%2583%259F%25E3%2583%25A5%25E3%2583%25AC%25E3%2583%25BC%25E3%2582%25BF%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2591%25EF%25BC%2599.png)

次に下記の画面が表示されるので「Create...」ボタンをクリックしてください。

![](https://lh4.googleusercontent.com/-PLAS_bhzPhs/U7pRUsFPSII/AAAAAAAAAMw/cSioo4IHFz8/s600/%25E3%2582%25A8%25E3%2583%259F%25E3%2583%25A5%25E3%2583%25AC%25E3%2583%25BC%25E3%2582%25BF%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2592%25EF%25BC%2590.png)

次に下記のような画面が表示されるので画面に従って入力して「OK」ボタンをクリックしてください。

![](https://lh3.googleusercontent.com/-IFdcqUD7jz4/U7pRUhqGq3I/AAAAAAAAAMY/NJHfMd3o2mY/s600/%25E3%2582%25A8%25E3%2583%259F%25E3%2583%25A5%25E3%2583%25AC%25E3%2583%25BC%25E3%2582%25BF%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2592%25EF%25BC%2591.png)

次に下記のような画面が表示されるので「OK」ボタンをクリックしてください。

![](https://lh3.googleusercontent.com/-hveGMQF0zTw/U7pRWD_8tRI/AAAAAAAAAM0/N7PeDu46WYo/s576/%25E3%2582%25A8%25E3%2583%259F%25E3%2583%25A5%25E3%2583%25AC%25E3%2583%25BC%25E3%2582%25BF%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2592%25EF%25BC%2594.png)

すると、画面が戻りますので「Nexus5」をクリックし、「Start...」ボタンをクリックしてください。

![](https://lh5.googleusercontent.com/-lMOxt1Th1GE/U7pRVfRtEsI/AAAAAAAAAMo/juuHkmK9-hY/s600/%25E3%2582%25A8%25E3%2583%259F%25E3%2583%25A5%25E3%2583%25AC%25E3%2583%25BC%25E3%2582%25BF%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2592%25EF%25BC%2592.png)

次に下記のような画面が表示されるので「Launch」ボタンをクリックしてください。

![](https://lh3.googleusercontent.com/-YwMiNYcEGJo/U7pRVuh-9LI/AAAAAAAAAM4/fl0q2YmAhRM/s426/%25E3%2582%25A8%25E3%2583%259F%25E3%2583%25A5%25E3%2583%25AC%25E3%2583%25BC%25E3%2582%25BF%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2592%25EF%25BC%2593.png)

少し待っているとエミュレータが起動するので確認したら画面を閉じてください。

![](https://lh6.googleusercontent.com/-c3evKItivvk/U7pRWuVh3dI/AAAAAAAAANA/oySJKTaa4EI/s512/%25E3%2582%25A8%25E3%2583%259F%25E3%2583%25A5%25E3%2583%25AC%25E3%2583%25BC%25E3%2582%25BF%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2592%25EF%25BC%2595.png)

これでエミュレータの環境構築は完了です。

## 環境構築（Genymotion）

PC（Mac）上でAndroidアプリを動作確認するためのエミュレーターに変わるシュミレータである「Genymotion」をインストールします。

まず、ブラウザで下記のURLにアクセスし、「x86/amc64」ボタンをクリックしてください。

<a href="https://www.virtualbox.org/wiki/Downloads" target="_blank">VirtualBoxをインストール</a>

![](https://lh5.googleusercontent.com/-Ipmq3tH3UaQ/U7pLXk2QfCI/AAAAAAAAAIc/Nlt-1-sG2ic/s600/genymotion%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2591.png)

インストールが完了しましたら下記のようにクリックし、zipファイルを解凍してください。

![](https://lh6.googleusercontent.com/-8Ov9gUhVxSY/U7pLbbzWcrI/AAAAAAAAAJ8/bwMIc1KKzB4/s576/genymotion%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2592.png)

解凍したら下記のような画面が表示されるので「VirtualBox.pkg」をクリックしてください。

![](https://lh4.googleusercontent.com/-jKsfSHzc86E/U7pLfkHnRDI/AAAAAAAAALE/bnJRF9uRbWs/s600/genymotion%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2593.png)

次に下記のような画面が表示されるので「続ける」ボタンをクリックしてください。

![](https://lh3.googleusercontent.com/-1mBTz78YuPk/U7pLgo6-rtI/AAAAAAAAALU/I3NlCol1OgQ/s600/genymotion%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2594.png)

次に下記のような画面が表示されるので「続ける」ボタンをクリックしてください。

![](https://lh6.googleusercontent.com/-l-ZlMwvIlV4/U7pLhN3znvI/AAAAAAAAALc/pqQa10BhLQQ/s600/genymotion%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2595.png)

次に下記のような画面が表示されるので「インストール」ボタンをクリックしてください。

![](https://lh3.googleusercontent.com/-DraE2HRE1qc/U7pLhQrDwxI/AAAAAAAAALs/tCbn8BvjHyg/s600/genymotion%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2596.png)

ここで下記の画面のようにパスワードを要求されるので、入力して「ソフトウェアをインストール」ボタンをクリックしてください。

![](https://lh4.googleusercontent.com/-CxZK9gm1fmc/U7pLhiAX3GI/AAAAAAAAALo/wYrgqi3YIlc/s600/genymotion%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2597.png)

インストールが完了したら次のような画面が表示されるので「閉じる」ボタンをクリックしてください

![](https://lh5.googleusercontent.com/--HuBntNFaO8/U7pLiHaGr0I/AAAAAAAAAL0/taWQeqQ1iXw/s600/genymotion%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2598.png)

次に、「Genymotion」をインストールします。
ブラウザで下記のURLにアクセスし、「GET GENYMOTION」ボタンをクリックしてください。
<a href="http://www.genymotion.com/" target="_blank">Genymotionをインストール</a>

![](https://lh3.googleusercontent.com/-ZOfx5qpr00o/VLHlkzJ-ieI/AAAAAAAAKrU/-M14G-UKzGk/w2192-h1330-no/Genymotion_download.jpg)

次に下記のような画面が表示されるので「DOWNLOAD」ボタンをクリックしてください。

![](https://lh4.googleusercontent.com/-T40Y1E8hjq0/VLHl6InOhNI/AAAAAAAAKrc/qXEQwm3WQac/w1710-h992-no/Genymotion_free_download.png)

次に下記のような画面が表示されるので「Get Gemnymotion」ボタンをクリックしてください。

![](https://lh5.googleusercontent.com/-jBUY2yiQ5i4/VLH4RervqRI/AAAAAAAAKs8/GIYOtVC8NuM/w1712-h1136-no/Genymotion_download2.png)

下記の画面が表示されますので「Create account」をクリックしてください。

![](https://lh4.googleusercontent.com/-GQfx0YF_7eA/VLH4qEEefTI/AAAAAAAAKtE/JbEClEOEwEI/w1710-h1098-no/Genymotion_signin.png)

次に下記のような画面が表示されるので下記に従って入力していき「SIGN UP」ボタンをクリックしてください。

![](https://lh3.googleusercontent.com/-0Lx3N8sauno/U7pa5eSPmpI/AAAAAAAAANg/WY1uG1XB1Uc/s600/genymotion%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2593%25EF%25BC%2591.png)

次に下記のような画面が表示されるので「Get Genymotion」ボタンをクリックします。

![](https://lh4.googleusercontent.com/-VMJrk0S5zxo/U7pa5UwEOKI/AAAAAAAAANc/NwTrC1YpspM/s600/genymotion%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2593%25EF%25BC%2592.png)

するともう一度下記の画面が表示されるので同じように「DOWNLOAD」ボタンをクリックしてください。

![](https://lh4.googleusercontent.com/-T40Y1E8hjq0/VLHl6InOhNI/AAAAAAAAKrc/qXEQwm3WQac/w1710-h992-no/Genymotion_free_download.png)

次に下記のような画面が表示されるので「MacOS X 64bit」ボタンをクリックしてください。

![](https://lh4.googleusercontent.com/-vzfV37QAvTo/U7pLXirjgMI/AAAAAAAAAIY/hyGBIJWPEMw/s600/genymotion%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2591%25EF%25BC%2591.png)

するとインストールが始まるので完了したら下記の画面のようにzipファイルをクリックして解凍してください。

![](https://lh6.googleusercontent.com/-oHUvPj5naa0/U7pLYzGQDnI/AAAAAAAAAI8/wj1SIcueHuo/s558/genymotion%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2591%25EF%25BC%2594.png)

解凍したら下記のような画面が表示されるので下記に従って「Genymotion」を「Applications」にドラック＆ドロップしてください。

![](https://lh4.googleusercontent.com/-9QzBYQApgR8/VLH5HSZXpmI/AAAAAAAAKtM/FjWWSvKY-Us/w1712-h1054-no/genymotion_install.png)

Launchpadから「Genymotion」を起動すると下記のような画面が表示されます。「開く」ボタンをクリックしてください。
※この画面が初回起動時にしか表示されません。

![](https://lh5.googleusercontent.com/-vzPThmFunx0/U7pLZsg89OI/AAAAAAAAAJc/CDLQP0-668U/s600/genymotion%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2591%25EF%25BC%2596.png)

次に下記のような画面が表示されるので「Yes」ボタンをクリックしてください。

![](https://lh3.googleusercontent.com/-7O5YJq7eU-g/U7pLZ2YB7vI/AAAAAAAAAJM/cSp5E3f-Gds/s600/genymotion%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2591%25EF%25BC%2597.png)

次に下記のような画面が表示されるので「Connect」ボタンをクリックしてください。

![](https://lh3.googleusercontent.com/-1W0NeDHlQr4/U7pLaexjfvI/AAAAAAAAAJU/KSgWyxalrFQ/s600/genymotion%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2591%25EF%25BC%2598.png)

次に下記のような画面が表示されるので「Genymotion」に登録した「Username」と「Password」を入力し、「Connect」ボタンをクリックしてください。

![](https://lh5.googleusercontent.com/-Tgnl0rkvDDE/U7pLawtfCTI/AAAAAAAAAJk/RW_ABJvjU1U/s509/genymotion%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2591%25EF%25BC%2599.png)

次に下記のようなデバイスを選ぶ画面が表示されるので下記のデバイスを選び「Next」ボタンをクリックしてください。

![](https://lh3.googleusercontent.com/-fPquuF3_K4s/U7pLbmwyqZI/AAAAAAAAAJs/mIkgi2ZnULg/s600/genymotion%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2592%25EF%25BC%2590.png)

次に下記のような画面が表示されるのでなにも変更せず「Next」ボタンをクリックしてください。

![](https://lh3.googleusercontent.com/-LY9dHUerGw8/U7pLcBi43SI/AAAAAAAAAJ4/DbGGC-OmUYc/s600/genymotion%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2592%25EF%25BC%2591.png)

するとデバイスを構築しているので少々お待ちください。

![](https://lh4.googleusercontent.com/-xQrR21M_iiI/U7pLcQDkiVI/AAAAAAAAAKM/YG0vRaG5KMA/s600/genymotion%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2592%25EF%25BC%2592.png)

次にデバイスの構築が終わると下記のような画面が表示されるので「Finish」ボタンをクリックしてください。

![](https://lh4.googleusercontent.com/-zJ1Y24uvUoU/U7pLdGvtdQI/AAAAAAAAAKk/0htNXOvBB48/s600/genymotion%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2592%25EF%25BC%2593.png)

次に下記のように初期画面に戻るので作ったデバイスを選択して「Play」ボタンをクリックしてください。

![](https://lh4.googleusercontent.com/-gHJCjKY_1eI/U7pLdKEp09I/AAAAAAAAAKI/ukOeMTG58io/s600/genymotion%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2592%25EF%25BC%2594.png)

すると「Genymotion」が立ち上がり下記のように表示されるので動かしてみて正常に作動したら画面を閉じてください。

![](https://lh4.googleusercontent.com/-sJgXOv3SQnU/U7pm1DMBdAI/AAAAAAAAAN4/M3Oe4ocXK6w/s600/genymotion%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2593%25EF%25BC%2593.png)

ここまでで「Genymotion」のインストールが完了しました。
次に「Android Studio」に「Genymotion」を取り込みます。

「Andriod Studio」を起動して先ほどのプロジェクトを立ち上げてください。
プロジェクトを立ち上げたら下記の画面に従って「Preferences...」をクリックしてください。

![](https://lh4.googleusercontent.com/-nI7Lb1VNWxM/U7pLdSC0NhI/AAAAAAAAAKU/i8nWTRW38T8/s600/genymotion%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2592%25EF%25BC%2595.png)

次に下記の画面が表示されるので「Plugins」を選択し「Browse 〜」ボタンをクリックしてください。

![](https://lh5.googleusercontent.com/-tz0H3gVxzK4/U7pLeNUynhI/AAAAAAAAAKc/ehdaKUrprrI/s600/genymotion%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2592%25EF%25BC%2596.png)


次に下記の画面が表示されるので「geny~」と検索し「Genymotion」を選択し「Install plugin」ボタンをクリックしてください。

![](https://lh3.googleusercontent.com/-nrP1EW3KKYk/U7pLeq8acnI/AAAAAAAAAK0/6y6CR3KSCXg/s600/genymotion%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2592%25EF%25BC%2597.png)


次に下記の画面が表示されるので「Yes」ボタンをクリックしてください。

![](https://lh5.googleusercontent.com/-Gf65sMiu3UQ/U7pLe7TbLuI/AAAAAAAAAKs/LKO7JBSEnzc/s600/genymotion%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2592%25EF%25BC%2598.png)

インストールが完了しましたら一度「Android Studio」を消して再起動してください。

![](https://lh3.googleusercontent.com/-GEWqv2UlCqA/U7p6apheKgI/AAAAAAAAAOY/DmSpjQ8lGSU/s600/genymotion%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2593%25EF%25BC%2594.png)
![](https://lh6.googleusercontent.com/-olQD0KsJi_A/U7p6arU5YnI/AAAAAAAAAOU/weUpxRRZfFQ/s599/genymoton%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2593%25EF%25BC%2595.png)

再起動しましたら下記の画面に従ってプロジェクトを立ち上げてください。

![](https://lh6.googleusercontent.com/--dhCn3NUiu8/U7p7f30gseI/AAAAAAAAAO0/nkfoPbkfzl0/s600/genymotion%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2593%25EF%25BC%2596.png)

プロジェクトが立ち上がったら下記の画面にある「Genymotion」のアイコンがあるのでクリックしてください。

![](https://lh6.googleusercontent.com/-BnM1Wfw1sKM/U7p7f58E1qI/AAAAAAAAAOw/jEFlY_hWNR8/s599/genymotion%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2593%25EF%25BC%2597.png)

次に下記の画面が表示されるので下記に従ってテキスト欄に入力して「OK」ボタンをクリックしてください。

![](https://lh3.googleusercontent.com/-T4pQK8hgXRU/U7pLfZrDWrI/AAAAAAAAAK8/6uy0UX6wouw/s600/genymotion%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2592%25EF%25BC%2599.png)

すると再び下記の画面が表示されるので「Genymotion」のアイコンをクリックしてください。

![](https://lh6.googleusercontent.com/-BnM1Wfw1sKM/U7p7f58E1qI/AAAAAAAAAOw/jEFlY_hWNR8/s599/genymotion%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2593%25EF%25BC%2597.png)

次に下記のような画面が表示されるのでデバイスを選択して「Start」ボタンをクリックしてください。

![](https://lh3.googleusercontent.com/-XlnpfQDiOtM/U7pLgC3UaQI/AAAAAAAAALQ/0HQ__4uUAlA/s576/genymotion%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2593%25EF%25BC%2590.png)

すると「Genymotion」が立ち上がるので動作を確認して正常に動いたら下記の画面のように消してください。

![](https://lh4.googleusercontent.com/-sJgXOv3SQnU/U7pm1DMBdAI/AAAAAAAAAN4/M3Oe4ocXK6w/s600/genymotion%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2593%25EF%25BC%2593.png)

これで「Genymotion」を「Android Studio」に取り込めました。
ようやく環境構築は終わったので、初めてのアプリを作っていきましょう。

