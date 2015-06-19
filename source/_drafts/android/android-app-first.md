layout: post
title: "第1講 はじめてのAndroidアプリ"
date: 2015-04-30 22:40:58
comments: true
tags: 
- Android Studio
- Android基本講座
categories: 
- Android Studio
- Android基本講座
---
簡単なAndroidアプリ開発をしてAndroidアプリ開発を体験できます。

<!-- more -->

## 講義のポイント

* MacにAndroidアプリの開発環境を構築し、Android Stdioの使い方に慣れる。
* Androidアプリの基本的な仕組み、ボタンや文字列、イメージ画像の表示方法を学ぶ。

## はじめてのアプリ作成

このセクションでは、Android Studioの使い方を解説するとともに、「とりあえず、動くアプリ」を制作します。今回製作するアプリは、その名も「My Very First App」。画面上のボタン押すことによって、「こんにちは　Android!!」の文字列が表示されたり、消えたりするアプリです。

![](https://lh5.googleusercontent.com/-FNfkDMDTsQ8/U7sd9t7zLNI/AAAAAAAAARE/d_WFvufTcjI/s512/MyVeryFirstApp4.png)

## Android Studioの起動

Android Studioとは、Androidアプリ開発に必要なツールがひとまとめになったソフトウェアです。(シュミレータは別で構築しますが...)まず、Android Studioを起動します。「アプリケーション」フォルダにある「Android Studio」のアイコンをダブルクリックします。
※今後の利便性のためにも、このタイミングでDockにも追加しましょう。

## 新規プロジェクトの作成

次に、新規アプリケーションを作成します。起動画面の「New Project...」と書かれたボタンをクリックしましょう。

![](https://lh5.googleusercontent.com/-hw593_0COiI/U7j91FuoitI/AAAAAAAAAEk/i2OLxCD7iM4/s600/%25E3%2582%25A8%25E3%2583%259F%25E3%2583%25A5%25E3%2583%25AC%25E3%2583%25BC%25E3%2582%25BF%25E6%25A7%258B%25E7%25AF%2589.png)

次にプロジェクト名を記入する画面が表示されるので①の所に「My Very First App」と記入し、「Next」ボタンをクリックしてください。

![](https://lh5.googleusercontent.com/-YTeqpc1h7bE/U7scff6QKPI/AAAAAAAAAQs/-l1IiQ0aLZQ/s600/MyVeryFirstApp3.png)

次にこのアプリの動作環境の範囲を決めるのでそのままなにもいじらずに「Next」ボタンをクリックしてください。

![](https://lh6.googleusercontent.com/-9IPJI7U-Fk8/U7kAoWIf8UI/AAAAAAAAAFM/yxa6o1M6p90/s600/%25E3%2582%25A8%25E3%2583%259F%25E3%2583%25A5%25E3%2583%25AC%25E3%2583%25BC%25E3%2582%25BF%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2593.png)

次に作りたいアプリのテンプレートを選択する画面が表示されるのでそのまま「Blank Activity」を選択して「Next」ボタンをクリックしてください。

![](https://lh5.googleusercontent.com/-7zwePN75BGg/U7kApV56xZI/AAAAAAAAAFg/X1NrBhDGh4M/s600/%25E3%2582%25A8%25E3%2583%259F%25E3%2583%25A5%25E3%2583%25AC%25E3%2583%25BC%25E3%2582%25BF%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2594.png)

最後にこのファイルのオプションを選択する画面が表示されるのでそのままにして「Finish」ボタンをクリックしてください。

![](https://lh4.googleusercontent.com/-yQ6E1s7eRxQ/U7kApQJlOHI/AAAAAAAAAF8/cY7wypRmqec/s600/%25E3%2582%25A8%25E3%2583%259F%25E3%2583%25A5%25E3%2583%25AC%25E3%2583%25BC%25E3%2582%25BF%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2595.png)

すると下記の画面が表示されるので少々お待ちください。

![](https://lh6.googleusercontent.com/-XmazD29aOmQ/U7kApnKO3eI/AAAAAAAAAFk/YRzh7-GtjNg/s600/%25E3%2582%25A8%25E3%2583%259F%25E3%2583%25A5%25E3%2583%25AC%25E3%2583%25BC%25E3%2582%25BF%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2596.png)

ここまでの手順でプロジェクトの「土台」が整いました。これからこのプロジェクトにコードを追加してアプリを完成させていきます。

![](https://lh6.googleusercontent.com/-mB_vmdunomM/U7r3Yal2gfI/AAAAAAAAAQU/XqxRFMM2dL8/s600/MyVeryFirstApp2.png)

## アプリの実装

いよいよ、本格的なアプリの実装を行なっていきます。今回制作するアプリの画面上には、「こんにちはAndroid!!」という文字列と、ボタンを配置します。このボタンを押すと、文字列が消えたり、表示されたりするという、ごく単純なアプリです。アプリの実装は主に、次の段階に区別することができます。

* アプリ画面のデザイン（画面上にボタンとラベル（TextView）とイメージの配置及び設定）
* 配置した部品の設定
* コードの記述（ボタンを押した時の処理など）

## アプリのデザイン

何よりも見た目から、ということで、アプリ画面のデザインを行なっていきます。以下の手順に従って、ボタンとラベル（TextView）とイメージ（ImageView）の配置を行ってください。

下記の画面のデバイスをダブルクリックするとレイアウトを編集できます。

![](https://lh5.googleusercontent.com/-2kdhw0O5bGQ/U7sj_4Z6z9I/AAAAAAAAARg/1eUbzgBXz6I/s600/MyVeryFirstApp5.png)

下記のような画面が表示されたら以下の手順に従って各部品を配置していってください。①②③の配置が終わったら④のような並び順にしてください。

![](https://lh5.googleusercontent.com/-MaFw8ZhzsPY/U7sj_z3yXxI/AAAAAAAAARc/eCjWHgKldWY/s600/MyVeryFirstApp6.png)

ここまでの作業で各部品の配置は完了です。次は各部品の設定を行います。

## 配置した部品の設定

次に先ほど配置した部品の設定を行います。
まずは「ImageView」の設定を行います。

下記の画面に従って編集していってください。

![](https://lh4.googleusercontent.com/-RjPp5iErHhU/U7tcOdKvAwI/AAAAAAAAASQ/c5bWWXLvwSs/s512/MyVeryFirstApp9.png)

![](https://lh6.googleusercontent.com/-HF9cziGlvpQ/U7tcNyUDC_I/AAAAAAAAASM/XNKx1Zuf89o/s512/MyVeryFirstApp10.png)

③の設定の仕方は下記の画面に従ってください。
「background」を選択して右の「...」ボタンをクリックします。

![](https://lh4.googleusercontent.com/-fTiZiUtJwlc/U7tcN1ed_hI/AAAAAAAAASI/z1ZsfmNXlR8/s600/MyVeryFirstApp7.png)

次に下記の画面が表示されるので「ic_launcher」を選択して「OK」ボタンをクリックすると設定できます。

![](https://lh6.googleusercontent.com/-P0eCyzV40Gk/U7tcN5kDSbI/AAAAAAAAASA/RSr0nlnev1Q/s512/MyVeryFirstApp8.png)

次に「Button」の設定を行います。
下記の画面に従って編集していってください。

![](https://lh3.googleusercontent.com/-H1s4Ljto980/U7tkb94YnzI/AAAAAAAAAS8/v5YtI_IXFoA/s512/MyVeryFirstApp11.png)

![](https://lh5.googleusercontent.com/-QXFz9W7ply8/U7tkb3GmQvI/AAAAAAAAAS0/xgNorlEYJuI/s512/MyVeryFirstApp12.png)

![](https://lh3.googleusercontent.com/-AkvnJwedRYQ/U7tkb2pw6jI/AAAAAAAAASw/zw55drYPTTs/s512/MyVeryFirstApp13.png)

最後にラベルの設定を行います。
下記の画面に従って編集していってください。

![](https://lh6.googleusercontent.com/-NoWGkYcRrDk/U7tkcoXo-sI/AAAAAAAAATQ/xC4fBttljHA/s512/MyVeryFirstApp14.png)

![](https://lh4.googleusercontent.com/-6xsHvdjRFcw/U7tkco3aATI/AAAAAAAAATI/hhp7pNzST78/s512/MyVeryFirstApp15.png)

④には「?android:attr/textAppearanceLarge」と入力してください。

![](https://lh6.googleusercontent.com/-VxRHx2ns-a0/U7tkcxf30gI/AAAAAAAAATM/_6CIurNo3v8/s512/MyVeryFirstApp16.png)

ここまでの作業で各部品の設定は完了です。ついにコードの記述に移ります。

## コードの記述

ここでは先ほど設定したボタンにActionをつけていきます。
まずは下記の画面のように「MyActivity.java」というファイルを開いてください。するとこのような画面が立ち上がります。

![](https://lh6.googleusercontent.com/-I_oNW4Jui3Y/U7to3lfMT4I/AAAAAAAAATo/PNo2sIWNL6I/s600/MyVeryFirstApp17.png)

ちなみに下記の画面のところをクリックするとimportの中身が確認できます。
![](https://lh5.googleusercontent.com/-IoqS_2J7Ef0/U7tz025mF9I/AAAAAAAAAUI/VALdUYnZoTk/s600/MyVeryFirstApp18.png)

初期段階ではこの４つしかimportされていません。

![](https://lh4.googleusercontent.com/-FmaZ2kVUrRs/U7tz06npOlI/AAAAAAAAAUE/FAWzslJEKAY/s600/MyVeryFirstApp.png)

ここ書いてあるコードは下記の通りです。

app/src/java/MyActivity.java

```java
package com.example.UserName.myveryfirstapp;

import android.app.Activity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;

public class MyActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_my);

    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.my, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();
        if (id == R.id.action_settings) {
            return true;
        }
        return super.onOptionsItemSelected(item);
    }
}
```

### クラスのインポート

まず、最初にクラスのインポートを行います。クラスのインポートとは今回のアプリで利用するオブジェクト（ボタンやラベル要素の部品）を操作するための設計書を今回開発するMyActivity.javaに取り込むということです。このクラスのインポートをすることによりアプリを構成している部品に様々な命令を記述する事ができるようになります。

app/src/java/MyActivity.java

```java
package com.example.UserName.myveryfirstapp;

import android.app.Activity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;

//ここから↓
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.view.View.OnClickListener;
//ここまで↑

public class MyActivity extends Activity {
    :
}
```

### 変数の宣言

次に変数の宣言を行います。先程までと同様に、黄色の部分を記述します。

app/src/java/MyActivity.java

```java
public class MyActivity extends Activity {

	//ここから↓
    Button myButton;
    TextView myLabel;
	//ここまで↑

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        :
    }
    :
}
```

### 画面起動時の処理

次に画面起動時の処理を記述していきます。ここも黄色の背景の部分をコピー＆ペーストしてください。

app/src/java/MyActivity.java

```java
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_my);
        //ここから↓
        myButton = (Button)findViewById(R.id.myButton);
        myLabel = (TextView)findViewById(R.id.myLabel);
       	//ここまで↑ 
		:
    }
```

### ボタンが押されたときの処理

続いて、ボタンが押された時の処理を記述します。下記の黄色網掛け部分を入れていきましょう。

app/src/java/MyActivity.java

```java
protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    setContentView(R.layout.activity_my);
    myButton = (Button)findViewById(R.id.myButton);
    myLabel = (TextView)findViewById(R.id.myLabel);
    //ここから↓
    myButton.setOnClickListener(new OnClickListener(){
        public void onClick(View v) {
            if (myLabel.getVisibility() == View.VISIBLE) {
                // ラベルが表示している場合は非表示
                myLabel.setVisibility(View.INVISIBLE);
            } else {
                // ラベルが非表示の場合は表示
                myLabel.setVisibility(View.VISIBLE);
            }
        }
    });
    //ここまで↑

}
```

これにより、ボタンがクリックされるとonClick()の中に書かれた処理が実行されることになります。（わからなくて大丈夫です！！）

## アプリの動作確認

ここまでの流れで作成作業は完了しました。次に実際に「Run」してアプリをシュミレータ上で動かしてみましょう。

まずは下記の画面の「Genymotion」のアイコンをクリックしてください。

![](https://lh4.googleusercontent.com/-GYV4UAxwKVo/U7u1yRFToBI/AAAAAAAAAUw/4CIk_pMkR3E/s600/MyVeryFirstApp19.png)

次にこのアイコンをクリックすると下記の画面が表示されるので「デバイス」を選択して「Start...」ボタンをクリックしてください。

![](https://lh3.googleusercontent.com/-XlnpfQDiOtM/U7pLgC3UaQI/AAAAAAAAALQ/0HQ__4uUAlA/s576/genymotion%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2593%25EF%25BC%2590.png)

次に「Genymotion」が立ち上がったと思いますのでこちらは消さないでください。
![](https://lh5.googleusercontent.com/-0cOxRhjcg4U/U7u3D5TiHyI/AAAAAAAAAVY/-9TDJaEO2W8/s512/MyVeryFirstApp25.png)

次にプロジェクト画面に戻り、下記の画面の「Run」アイコンをクリックしてください。

![](https://lh3.googleusercontent.com/-UTf-jcEuoIQ/U7u1yZkWKcI/AAAAAAAAAUo/6355PHmKMJE/s600/MyVeryFirstApp21.png)

次に実行デバイス選択画面が表示されるので下記の画面のようになっているのを確認して「OK」ボタンをクリックしてください。

![](https://lh5.googleusercontent.com/-H8D_3CVydxQ/U7u1zTYMkLI/AAAAAAAAAU8/R_2gPFD_JRE/s576/MyVeryFirstApp22.png)

少し待っていると下記の画面のようなものが立ち上がります。
下記の画面のようになったら実行完了です。

![](https://lh4.googleusercontent.com/-PogtB_YZvHY/U7u1zq3C30I/AAAAAAAAAVA/SLHF8kK3tzw/s600/MyVeryFirstApp24.png)

最後に先程作動させた「Genymotion」を確認してください。
今回のプロジェクトが作動していると思いますので実際に動かしてみてください。

![](https://lh5.googleusercontent.com/-FNfkDMDTsQ8/U7sd9t7zLNI/AAAAAAAAARE/d_WFvufTcjI/s512/MyVeryFirstApp4.png)

これで今回のプロジェクトは完了しました。
