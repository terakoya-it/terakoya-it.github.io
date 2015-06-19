layout: post
title: "第2講 タイマーアプリ"
date: 2015-04-30 22:40:58
comments: true
tags: 
- Android Studio
- Android基本講座
categories: 
- Android Studio
- Android基本講座
---
タイマーアプリを作りながらAndroidアプリ開発を学びます。

<!-- more -->

## 講義のポイント

本講義では、「タイマーアプリ」の作成を通して、Androidアプリ開発の基礎を学習します。

![](https://lh6.googleusercontent.com/-sd06KcJ86o4/U7wHXqD7d6I/AAAAAAAAAVw/J09ZoL2DteI/s512/TimerApp1.png)

本講義で作成するタイマーアプリの画面

## タイマーアプリの作成

Timerプロジェクトにタイマー機能を組み込み、機能の追加方法を学びます。今回は以下のような機能をもったタイマーを作成します。

1. カウントを開始する
2. カウントを停止する
3. カウントをリセットする

具体的な画面は、上記の画面のようになります。では、実際に作ってみましょう。

## 新規プロジェクトの立ち上げ

前講のようにAndroid Studioを起動して「New Project...」ボタンを押して作成してください。

![](https://lh5.googleusercontent.com/-hw593_0COiI/U7j91FuoitI/AAAAAAAAAEk/i2OLxCD7iM4/s600/%25E3%2582%25A8%25E3%2583%259F%25E3%2583%25A5%25E3%2583%25AC%25E3%2583%25BC%25E3%2582%25BF%25E6%25A7%258B%25E7%25AF%2589.png)

次も前講同様に下記の画面のようにしてプロジェクト画面を立ち上げてください。

![](https://lh3.googleusercontent.com/-yWhADMhcAX0/U76HFkC6fMI/AAAAAAAAAWI/0HmQOUMwHB0/s600/TimerApp2.png)


![](https://lh6.googleusercontent.com/-9IPJI7U-Fk8/U7kAoWIf8UI/AAAAAAAAAFM/yxa6o1M6p90/s600/%25E3%2582%25A8%25E3%2583%259F%25E3%2583%25A5%25E3%2583%25AC%25E3%2583%25BC%25E3%2582%25BF%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2593.png)


![](https://lh5.googleusercontent.com/-7zwePN75BGg/U7kApV56xZI/AAAAAAAAAFg/X1NrBhDGh4M/s600/%25E3%2582%25A8%25E3%2583%259F%25E3%2583%25A5%25E3%2583%25AC%25E3%2583%25BC%25E3%2582%25BF%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2594.png)


![](https://lh4.googleusercontent.com/-yQ6E1s7eRxQ/U7kApQJlOHI/AAAAAAAAAF8/cY7wypRmqec/s600/%25E3%2582%25A8%25E3%2583%259F%25E3%2583%25A5%25E3%2583%25AC%25E3%2583%25BC%25E3%2582%25BF%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2595.png)

下記の画面が立ち上がりましたらここの項目は完了です。
次はレイアウトに移ります。

![](https://lh6.googleusercontent.com/-F8lzkOCkKvc/U76IT3OccjI/AAAAAAAAAWc/Q6kMvvQ-31I/s600/TimerApp3.png)

## 画面のレイアウト

まずは、画面のレイアウトを構成しましょう。画面レイアウトは、activity_my.xmlというファイルに記述されています。

![](https://lh4.googleusercontent.com/-DzsI0nV5kRY/U76I5DdVJdI/AAAAAAAAAW0/OL6NNI2UysY/s512/TimerApp4.png)

すでに、activity_my.xmlには以下のような記述がされています。

res/layout/activity_my.xml

```xml
<RelativeLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:paddingLeft="@dimen/activity_horizontal_margin"
    android:paddingRight="@dimen/activity_horizontal_margin"
    android:paddingTop="@dimen/activity_vertical_margin"
    android:paddingBottom="@dimen/activity_vertical_margin"
    tools:context=".MyActivity">

    <TextView
        android:text="@string/hello_world"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content" />

</RelativeLayout>
```

ここに、ボタンやタイマーといった部品を配置するコードを記述していきます。詳しい説明は、次回以降の講義で行われるので今回はだまされたと思ってついてきてください。

activity_my.xmlを以下のように変更します。先ほど、黄色の部分は追加する部分、といいましたが、グレーの部分は反対にコードから削除する部分です。

res/layout/activity_my.xml

```xml
//ここから↓
<RelativeLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="fill_parent"
    android:layout_height="fill_parent"
    android:paddingBottom="@dimen/activity_vertical_margin"
    android:paddingLeft="@dimen/activity_horizontal_margin"
    android:paddingRight="@dimen/activity_horizontal_margin"
    android:paddingTop="@dimen/activity_vertical_margin"
    tools:context=".MainActivity" >

    <TextView
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="@string/hello_world" />

</RelativeLayout>
//ここまで↑を削除


//ここから↓
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
 xmlns:tools="http://schemas.android.com/tools"
 android:layout_width="match_parent"
 android:layout_height="match_parent"
 android:orientation="vertical" >
    <Chronometer
        android:id="@+id/chronometer"
        android:layout_width="match_parent"
        android:layout_height="wrap_content" />
    <Button
        android:id="@+id/start_button"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:text="start" />
    <Button
        android:id="@+id/stop_button"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:text="stop" />
    <Button
        android:id="@+id/reset_button"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:text="reset" />
</LinearLayout>
//ここまで↑を追加
```

実行すると、以下の様な画面になれば成功です。

![](https://lh6.googleusercontent.com/-nCGHcX7DQjQ/U76KmJ7bQqI/AAAAAAAAAXQ/XSN2IPPDPos/s512/TimerApp5.png)

このように、レイアウトの変更はxmlファイルによって行います。（詳細は次回の講義で説明します）

## Javaファイルの編集

画面レイアウトを変更したので、具体的なアプリケーションの動作を記述しましょう。例えば、startボタンを押したらタイマーがスタートすべきですし、stopボタンを押したらタイマーは一時停止すべきです。このような、アプリケーションの動作はJavaファイルに記述されています。

「画面のレイアウトはxmlファイル、実際の動作はjavaファイルに記述されている」と理解してもらえれば大丈夫です。

以下のように、srcフォルダ、mainフォルダ、javaフォルダを展開表示し、MyActivity.javaをダブルクリックして選択します。

![](https://lh3.googleusercontent.com/-vtVD34PW09Q/U76LXeJ7XII/AAAAAAAAAXg/Sgi_yxtuSmY/s512/TimerApp6.png)

MyActivity.javaが今回のアプリケーションの動作を記述するファイルです。すでに、以下のような記述がされています。

app/src/java/MyActivity.java

```java
package com.example.username.timerapp;

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

詳しい説明は今回はしませんが、ひとつだけ。先ほどmy.xmlを編集して画面のレイアウトを変更しましたが、これは以下の1行でレイアウトとしてmy.xmlを指定しているからです。

```java
setContentView(R.layout.activity_main);
```

### クラスのインポート

まず、最初にクラスのインポートを行います。クラスのインポートとは今回のアプリで利用するオブジェクト（ボタンやラベル要素の部品）を操作するための設計書を今回開発するMyActivity.javaに取り込むということです。このクラスのインポートをすることによりアプリを構成している部品に様々な命令を記述する事ができるようになります。

app/src/java/MyActivity.java

```java
package com.example.daiki.timerapp;

import android.app.Activity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
//ここから↓
import android.os.SystemClock;
import android.view.View;
import android.widget.Chronometer;
import android.widget.Button;
//ここまで↑

public class MyActivity extends Activity {
    :
}
```

### 変数の宣言

次に、変数の宣言（次回以降に詳しく説明するので、わからなければ気にしないでください！）を行います。
先程までと同様に、黄色の部分を追記します。

app/src/java/MyActivity.java

```java
public class MyActivity extends Activity {
	//ここから↓
    private Button mStartButton;
    private Button mStopButton;
    private Button mResetButton;
    private Chronometer mChronometer;
    private long mTime;
	//ここまで↑

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        :
    }
    :
}
```

### 起動画面時の処理

次に画面起動時の処理を記述していきます。
「onCreate」と書いてある箇所の「setContentView(R.layout.activity_main);」の次の行から以下の黄色の背景の部分をコピー＆ペーストしてください。

app/src/java/MyActivity.java

```java
@Override
public void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    setContentView(R.layout.activity_main);
        
    //Viewの初期化
    //ここから↓
    mChronometer = (Chronometer)findViewById(R.id.chronometer);
    mStartButton = (Button) findViewById(R.id.start_button);
    mStopButton = (Button) findViewById(R.id.stop_button);
    mResetButton = (Button) findViewById(R.id.reset_button);
    mStopButton.setEnabled(false);
    //ここまで↑
}
```

### ボタンが押された時の処理

続いて、ボタンが押された時の処理を記述します。下記の黄色網掛け部分を入れていきましょう。

app/src/java/MyActivity.java

```java
protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    setContentView(R.layout.activity_my);
    //Viewの初期化
    mChronometer = (Chronometer) findViewById(R.id.chronometer);
    mStartButton = (Button) findViewById(R.id.start_button);
    mStopButton = (Button) findViewById(R.id.stop_button);
    mResetButton = (Button) findViewById(R.id.reset_button);
    mStopButton.setEnabled(false);
    //ボタンが押された時の処理
    //ここから↓
    mStartButton.setOnClickListener(new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            //スタート
        }
    });
    mStopButton.setOnClickListener(new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            //ストップ
        }
    });
    mResetButton.setOnClickListener(new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            //リセット
        }
    });
    //ここまで↑
}
```
これにより、ボタンがクリックされるとonClick()の中に書かれた処理が実行されることになります。（わからなくて大丈夫です！！）

### タイマー機能の実装

最後に、タイマーの処理を追加します。
以下の黄色背景の部分を「スタート」「ストップ」「リセット」の各項目の下にコピー＆ペーストして下さい。
まずは、スタートボタンが押された時の処理を記述します。

app/src/java/MyActivity.java

```java
mStartButton.setOnClickListener(new View.OnClickListener() {
    @Override
    public void onClick(View v) {
        //スタート
        //ここから↓
        mStartButton.setEnabled(false);
        mStopButton.setEnabled(true);
        mChronometer.setBase(SystemClock.elapsedRealtime() - mTime);
        mChronometer.start();
        //ここまで↑ 
    }
});
```

本講義では、このようにコードの一部だけを抜き出して記載することが多いです。どこにどのコードを入力するのか、間違えないようにしましょう。必ず、どこに入力するべきかわかるようにコードの前後も記載してあります。

次に、ストップボタンが押された時の処理を記述します。

app/src/java/MyActivity.java

```java
    mStopButton.setOnClickListener(new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            //ストップ
            //ここから↓
            mStartButton.setEnabled(true);
            mStopButton.setEnabled(false);
            mChronometer.stop();
            mTime = SystemClock.elapsedRealtime() - mChronometer.getBase();
            //ここまで↑
        }
    });
```

最後に、リセットボタンが押された時の処理を記述します。

app/src/java/MyActivity.java

```java
    mResetButton.setOnClickListener(new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            //リセット
            //ここから↓
            mStartButton.setEnabled(true);
            mStopButton.setEnabled(false);
            mChronometer.stop();
            mChronometer.setBase(SystemClock.elapsedRealtime());
            mTime = 0;
            //ここまで↑
        }
    });
```

では、実行してみましょう。ちゃんと動いたでしょうか？
「Genymotion」をStartしてから実行してください。

![](https://lh4.googleusercontent.com/-KGBLS7mFBM0/U76R7dTsTwI/AAAAAAAAAX4/USZ5wkse75E/s512/TimerApp7.png)

### デザインを整える

最後に、デザインを整えましょう。activity_my.xmlを以下のように変更します。

res/layout/activity_my.xml

```xml
<Chronometer
        android:id="@+id/chronometer"
        android:layout_width="match_parent"
        android:layout_height="0dp"
        android:layout_weight="5"
        android:gravity="center"
        android:textColor="#99cc00"
        android:textSize="100dp" />
```

実行してみましょう。以下のようなレイアウトになったでしょうか？

![](https://lh3.googleusercontent.com/-xN5xbVpHEDM/U76SvDfErtI/AAAAAAAAAYI/HyY5ewYcZ9g/s512/TimerApp8.png)

これで、タイマーアプリの作成は終了です。
具体的にどのコードがなにをしていたのか、理解できないところが多かったと思いますが、今回はアプリケーション作成の流れを知ってもらい、自分の作ったアプリケーションが動く楽しさ味わっていただくためにあえて詳しい説明を省いています。以降の講義できちんと説明しますので、安心してください。

世界に挑戦する、Androidアプリケーション開発の旅に出かけましょう。
本講義では、「タイマーアプリ」の作成を通して、Androidアプリ開発に必要な環境構築と、アプリ開発の基礎を学習します。