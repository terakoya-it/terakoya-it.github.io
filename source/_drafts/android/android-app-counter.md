layout: post
title: "第3講 カウンターアプリ"
date: 2015-04-30 22:40:58
comments: true
tags: 
- Android Studio
- Android基本講座
categories: 
- Android Studio
- Android基本講座
---
「カウンターアプリ」の作成を通して、Androidアプリ開発で最低でも必要なレイアウトと動きの編集を学習します。

<!-- more -->

本講義では「カウンターアプリ」の作成を通して、Androidアプリ開発で最低でも必要なレイアウトと動きの編集を学習します。

![](https://lh5.googleusercontent.com/-M1N-xvqm6X8/U8ED4twtztI/AAAAAAAAAaE/s406yRvw7Ec/s512/CounterApp.png)

本講義で作成するカウンターアプリの画面

## 講義のポイント

### ハードウェアとソフトウェア

コンピュータはハードウェアとソフトウェアから構成されています。
ハードウェアというのは例えばCPUやHDD,メモリやマウスといったものです。詳しい仕組みを知らなくても名前を耳にしたことはあるのではないでしょうか。

しかしコンピュータはハードウェアだけでは何もできません。

例えば、皆さんはゲーム機のハードウェアを新しく買うときにゲームソフトも必ず一緒に購入するでしょう。ゲーム機（ハードウェア）だけでは遊ぶことはできません。

コンピュータの世界でも、ハードウェアがどう動くのか、何をするのかという処理の手順をソフトウェアから制御する必要があります。このソフトウェアの中核をなしているのがプログラムです。
 
プログラミングとは、簡単に言ってしまえばコンピュータに対して様々な「仕事」の指示を行うことです。

プログラムを書くためには英語や日本語ではなく、特別な言語が必要です。なぜなら、英語や日本語では意味があいまいすぎるからです。

しかし、コンピュータが理解できるのは"0"と"1"の二種類の数字だけです。0と1だけで構成されているプログラムは機械語と呼ばれ、コンピュータは機械語を理解して様々な処理を行うことができます。

以前は人間が0と1の機械語を直接記述している時代もありました。しかし、あまりに開発効率が悪いため機械語よりも人間の言葉に近い水準の様々なプログラミング言語が開発されました。本講座で学ぶJava言語もこのようなプログラミング言語のひとつです。

### Android OSとJava言語

ハードウェアの様々な機能を管理し、使いやすくするソフトウェアのことをOS(Operating System)と呼びます。パソコンでは、Microsoft社のWindowsやApple社のMac OS X,オープンソースのLinux等が有名でしょう。

“Android"や"iOS"もこれらのOSの仲間です。特徴的なところは、WindowsやOS Xと異なりモバイルプラットフォーム向けに最適化されているところです。
パソコンとは違い、モバイルデバイスは様々な制約により性能が制限されています。そのような厳しい環境でもユーザがストレスを感じずにデバイスを扱えるように、様々な工夫がなされているのです。

Androidでは、プログラミング言語としてJava言語を利用します。Java言語は、サン・マイクロシステムズ社が開発したプログラミング言語です（現在はオラクル社に買収されています）。

Java言語では、コンパイラとインタプリタという2つのソフトウェアによって、Java言語で書かれたプログラムが機械語に翻訳されています。実際のAndroid端末の中でどのように処理がおこなわれているのか詳しく知りたい人は、「Dalvik仮想マシン」というキーワードで検索してみると良いでしょう。

## カウンターアプリの作成

今回はカウンターアプリを作成します。

![](https://lh5.googleusercontent.com/-M1N-xvqm6X8/U8ED4twtztI/AAAAAAAAAaE/s406yRvw7Ec/s512/CounterApp.png)

## プロジェクトの作成

前回のおさらいになりますが、Android Studioでプロジェクトを作りましょう。
Android Studioを起動してプロジェクトを作成します。ここでは「Counter」というプロジェクトを作成します。Welcome to Android Studio画面から「New Project」を選択します。
そしたら下記の画面のように入力していってください。

![](https://lh4.googleusercontent.com/-u0iMuSfYcKc/U7-YAUy_ZGI/AAAAAAAAAZk/JF_bIgbnwNk/s600/CounterApp1.png)

ここからは前回同様になにも変更せずに「Next」ボタンを押していき最後に「Finish」ボタンを押してプロジェクトを立ち上げてください。

![](https://lh6.googleusercontent.com/-9IPJI7U-Fk8/U7kAoWIf8UI/AAAAAAAAAFM/yxa6o1M6p90/s600/%25E3%2582%25A8%25E3%2583%259F%25E3%2583%25A5%25E3%2583%25AC%25E3%2583%25BC%25E3%2582%25BF%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2593.png)

![](https://lh5.googleusercontent.com/-7zwePN75BGg/U7kApV56xZI/AAAAAAAAAFg/X1NrBhDGh4M/s600/%25E3%2582%25A8%25E3%2583%259F%25E3%2583%25A5%25E3%2583%25AC%25E3%2583%25BC%25E3%2582%25BF%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2594.png)

![](https://lh4.googleusercontent.com/-yQ6E1s7eRxQ/U7kApQJlOHI/AAAAAAAAAF8/cY7wypRmqec/s600/%25E3%2582%25A8%25E3%2583%259F%25E3%2583%25A5%25E3%2583%25AC%25E3%2583%25BC%25E3%2582%25BF%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2595.png)

これで新規プロジェクトが立ち上がりました。
![](https://lh3.googleusercontent.com/-L2mWGYIGVBA/U7-XskpJO6I/AAAAAAAAAZM/7jhEM6fo6DA/s600/CounterApp2.png)

## ファイル構成

前回の講義でも多少説明を行いましたが、Androidアプリケーションの開発には、大きく２種類のファイルが必要です。

| 拡張子 | 内容                             |
|:------|:---------------------------------|
| .java | アプリケーションの動作を記述する      |
| .xml  | アプリケーションのレイアウトを記述する |

## レイアウトファイルの編集

すでにres/layout/activity_my.xmlが開かれているのでこのファイルを以下のように編集してください。グレーの背景部分を削除し、黄色の背景部分を追加してください。

res/layout/activity_my.xml

```xml
//ここから↓
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
//ここまで↑削除

//ここから↓
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="fill_parent"
    android:layout_height="fill_parent"
    android:orientation="vertical" >
    <TextView
        android:id="@+id/text"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_gravity="center"
        android:text="0"
        android:textSize="100dip" />
    <Button
        android:id="@+id/plus1"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_gravity="center"
        android:text="+1" />
</LinearLayout>
//ここまで↑追加
```

では１度実行してみましょう。前回同様「Genymotion」を起動させてから「Run」ボタンで実行してください。このような画面になったでしょうか？

![](https://lh6.googleusercontent.com/-PgGUj4QnfBk/U8ED4lMyoAI/AAAAAAAAAaA/XnZzuWz5opE/s512/CounterApp3.png)

試しに＋１ボタンをタップしてみてください。ボタンが青色に変化しますね。今はまだこれ以上のことは起きません。

このように、Androidアプリケーションのレイアウトの変更を行うには、xmlファイルの編集を行います。基本的には、xmlファイルで画面のレイアウトの定義を行い、javaファイルでアプリケーションの動作の定義を行います。例えば、xmlファイルでボタンを画面に配置し、javaファイルでボタンが押されたときの動作を定義する、といった具合です。

TextViewは、文字列を表示するための、Buttonはボタンを表示するための部品（ウィジェットと呼びます）です。Androidでは、テキストビュー・ボタン・エディットテキスト（テキスト入力を行うウィジェット）・チェックボックス・ラジオボタン等、様々なウィジェットを使うことができます。また、それぞれのウィジェットは、様々な設定項目を持っています。例えば、android:textは、要素に表示する文字列を設定する項目です。今回は、TextViewには”0”を、ボタンには”+1”を設定しています。

## javaファイルの編集

前回の講義でストップボタンやスタートボタンに対して行なったのと同じように、ボタンを押した時の処理を追加します。先程はレイアウトの編集を行ったのでxmlファイルを編集しましたが、今回はアプリケーションの動作を記述するのでMyActivity.javaファイルの編集を行います。

MyActivity.javaファイルはsrc -> main -> java -> com.sample.username.counterにあります。

![](https://lh3.googleusercontent.com/-4IhZy_T1RBg/U8ELqjJLU4I/AAAAAAAAAac/6Kb5k-d7_-w/s554/ConuterApp4.png)

### 変数の宣言

まず変数の宣言をする必要があります。下記の黄色の部分をMyActivity.javaに記述してください。

app/src/java/MyActivity.java

```java
public class MyActivity extends Activity {

	//ここから↓
    private TextView countText;
    private Button plus1Button;
    int number;
	//ここまで↑
    :
    :
}
```

この黄色の部分をコピー＆ペーストすると下記の画面が表示されると思います。
これは変数としてボタンとラベルを追加したのでこれらをインポートしますかという通知がきています。ここではとりあえず「OK」ボタンをクリックしてください。

![](https://lh5.googleusercontent.com/-XJyA2trvCXE/U8EO-d8mS3I/AAAAAAAAAa0/ticSaVW_Fzo/s524/CounterApp5.png)

するとimportのところに下記の記述が自動追加されました。

app/src/java/MyActivity.java

```java
package com.example.daiki.counter;

import android.app.Activity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
//ここから↓
import android.widget.Button;
import android.widget.TextView;
//ここまで↑

public class MyActivity extends Activity {
    :
    :
}
```

ここまでやると下記の画面のようになったと思います。
なお先程追加した変数の名前の部分は灰色になっていますがこれはまだこの変数が１度も使われていないという警告を表しています。この警告は、これから具体的なコードを記述することで消えますので無視して結構です。

![](https://lh5.googleusercontent.com/-UxqjP_Zs-RY/U8ERLI3b1zI/AAAAAAAAAbM/55KliB26qDg/s600/CounterApp6.png)

### 変数について

プログラミングにおいてとっても大事が概念である変数について解説します。

#### 変数と型の宣言

MyActivity.javaファイルの中で下記の行があります。これは何を意味するでしょうか？

```
int number;
```

プログラムを実行するとき、プログラムはコンピュータに様々な値を記憶させながら処理をしています。今回であれば、何回+1ボタンが押されたのかを記憶していますね。この様な値を記憶させておく機能を変数(variable)と呼びます。要は、様々な値が入る箱です。コンピュータは様々な値を記憶するためにメモリというハードウェアを持っており、変数はメモリに記憶されます。

変数を作る際には、大きく2つのことを決めなくてはなりません。

1. 変数の名前
2. 変数の型

int number;であれば、numberが変数の名前で、intが変数の型です。変数を作ることを、変数を宣言するといいます。

変数の名前は、我々が適当に選んで決める事ができます。numberでなく、goukeiやresultといった違う名前にしても構いません。ただし、完全に自由に名前がつけられるわけではありません。いくつか注意事項があります。

1. 予めJavaで使われているキーワード（予約語）は利用できません。例えば、classやreturn等が該当します。
2. 数字ではじめることはできません。number1はOKですが、1numberはだめということです。
3. 大文字と小文字は異なる変数として区別されます。つまり、numberとNumberは人間からみると同じにみえますが、コンピュータは全く違うものとして処理を行います。

変数の名前は、プログラムの処理にあったわかりやすいものにしましょう。また、長さの制限はありませんがあまりに長い変数も読みづらいので避けましょう。

変数の型は、あらかじめJava言語の中で数種類用意されています。

例えば、今回利用するintという型は、-2147483648から2147483647までの整数を格納できる変数の型です。
今回は整数を利用する上に、そんなに膨大な回数+1ボタンをタップする暇な人はいないと思うので、intを利用しています。javaには他にも基本的な型（基本型）として以下のようなものがあります。

| 型の名前 | 意味 |
|:-------|:-----|
| int    |  整数型 32ビット符号つき(-2147483648～2147483647) |
| long   |  整数型 64ビット符号つき(-9223372036854775808～9223372036854775807) |
| short  | 整数型 16ビット符号つき(-32768～32767) |
| byte   | 整数型 8ビット符号つき(-128～127) |
| char   | 文字型 16ビット符号なし(Unicode) |
| float  | 浮動小数点数型 32ビット浮動小数点数(IEEE754-1985) |
| double | 浮動小数点数型 64ビット浮動小数点数(IEEE754-1985) |
| boolean | 論理型 true または false |

色々難しそうなことが書かれていますが、要はint,long,short,byteが整数を扱う変数で、それぞれ扱える数値の範囲が異なっています。またcharは文字を扱う変数、float,doubleが小数を扱う変数で、最後のbooleanがtrueかfalseだけが入る変数である、ということだけ頭の片隅にしまっておいてください。

変数を宣言する際には予めどの型を扱う変数なのかを決めておく必要があります。例えば下記と記述した場合、numberには-32768から32767までの整数しか入れることができません。

```
short number;
```

0.3といった小数や、40000といったshort型で扱える範囲を超えた整数は格納できないのです。

#### 変数の利用

変数を宣言すると、変数に値を格納することができます。これを、変数に値を代入する、といいます。

変数の代入は、=を使って表します。今回は起動時に（起動時には、onCreate()に書かれた命令が実行されます）、number = 0;として変数numberに0を代入しています。

また宣言時に、宣言と代入を同時に行うことも出来ます。

```
int number = 0;
```

このような書き方を、変数を初期化する、といいます。

では、下記は何をしているのでしょうか？

```
number = number + 1;
```

これは、先に入っていたnumberの値に1を足しています。そうすることで、ボタンが押されるごとに1ずつ増えるという処理を実現しているのです。

また実は、number = number + 1;はnumber++;というふうにもかけます。プログラムのなかで整数に1を足す処理を行うことはとても多いので、短く楽に記述できるようになっているのです。

上記のように書き換えて、実行してみましょう。同じように動作したでしょうか。確認ができたら、number = number + 1; に一旦戻して置きましょう。

app/src/java/MyActivity.java

```java
public void onClick(View v) {
    number = number + 1;
    number++;
    countText.setText(number + "");
}
```

このように変数にデータを格納してプログラムを動かしていきます。

### ボタンクリック時の処理追加

では具体的にアプリケーションの動作の記述を行いましょう。同じくMyActivity.javaの以下の部分を編集します。今回はまず、＋１ボタンをタップ（押す）したら画面中央に表示されている数字を1ずつ増加させるようにします。
JavaファイルのonCreate()の中を以下のように編集します。

OnCreate() app/src/java/MyActivity.java

```java
@Override
public void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    setContentView(R.layout.activity_my);

    //ここから↓
    countText = (TextView)findViewById(R.id.text);
    plus1Button = (Button)findViewById(R.id.plus1);
    number = 0;
    countText.setText(number + "");
    plus1Button.setOnClickListener(newView.OnClickListener() {
        public void onClick(View v) {
            number = number + 1; 
            countText.setText(number + "");
        }
    });
    //ここまで↑
}
```

するとここでViewという部分が赤くなると思います。なぜかというと「View」がインポートされていないという警告が出ているからです。先程は自動でやってくれましたが今回は自分でやりましょう。

赤くなっているViewをクリックしてください。すると下記の画面のように青いダイアログが表示されます。

![](https://lh3.googleusercontent.com/-gGbVQ114I7k/U8V1-vUrUUI/AAAAAAAAAlw/jUGpQSmDH28/s600/CounterApp18.png)

ここでoptionキー＋returnキーを押してください。すると自動的にviewがインポートされたと思います。

app/src/java/MyActivity.java

```java
package com.example.daiki.counter;

import android.app.Activity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
//ここから↓
import android.view.View;
//ここまで↑
import android.widget.Button;
import android.widget.TextView;

public class MyActivity extends Activity {
    :
    :
}
```

１度実行してみましょう。＋１ボタンを押すと数字が１ずつ増加したでしょうか？

ここで、findViewByIdという命令（メソッド）を利用していますが、これはxmlファイルで宣言したTextViewやButtonといったウィジェットを、プログラムで扱えるように橋渡しするものです。今回は、findViewByIdメソッドを利用することで、xmlファイルで定義したButtonウィジェットに対して押された場合の処理を定義しています。xmlファイルで定義した非常によく登場する命令なので覚えておきましょう。例えば今回はレイアウトファイル(activity_my.xml)のなかで下記のように定義しましたよね。

res/layout/activity_my.xml

```xml
<TextView
        android:id="@+id/text"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_gravity="center"
        android:text="0"
        android:textSize="100dip" />
```

MyActivity.javaの中で下記のプログラムを記述する事によって画面要素（今回はTextView）に対して命令を記述する事ができるようになります。

```java
countText = (TextView)findViewById(R.id.text);
```

findViewByIdは今後頻繁に出てきますので覚えるようにしましょう。

## 機能拡張

### -１ボタンを設置してみよう

では次に、-1できるボタンを設置してみましょう。+1ボタンとは、どのように違うのでしょうか？
+1ボタンは、以下の様にして作成したのでしたね。重要な部分の背景を黄色にしています。

（手順１）activity_my.xmlファイル（レイアウトファイル）に＋１ボタンを定義

```xml
<Button
    //ここから↓
    android:id="@+id/plus1"
    //ここまで↑
    android:layout_width="wrap_content"
    android:layout_height="wrap_content"
    android:layout_gravity="center"
    android:text="+1" />
```

(手順2) MyActivity.javaファイルの上部に、findViewById()で利用するためのButton型の変数を定義

```java
public class MyActivity extends Activity {

    private TextView countText;
	//ここから↓
    private Button plus1Button;
	//ここまで↑
    int number;
    :
}
```

(手順3) MyActivity.javaファイルのonCreate()の中で、findViewByIdを利用し、レイアウトファイルと結びつけ、その後ボタンを押したときの動作を追加

```java
countText = (TextView)findViewById(R.id.text);
//ここから↓
plus1Button = (Button)findViewById(R.id.plus1);
number = 0;
countText.setText(number + "");
plus1Button.setOnClickListener(new View.OnClickListener() {
    @Override
    public void onClick(View v) {
        number = number + 1; 
        countText.setText(number + "");
    }
});
//ここまで↑
```

では、-1ボタンを設置し、-1ボタンをタップしたら表示される数字を-1するようにしてみましょう。+1ボタンを作った時と同じように、3つのステップにわけて自分でコードを記述してみましょう。+1ボタンはそのまま残して、追加で新しく-1ボタンを作成してください。

どうしてもわからなければ、周囲のアシスタントに質問して下さい。また、早めに終わった人に相談しても良いでしょう。他人に質問をしながらでも、自分で考えてコードを書いてみることが成長につながります。

ボタンのようなインタフェースの定義は、activity_my.xmlファイルを編集するのでしたね。+1ボタンの記述の下に、-1ボタンに定義を記述します。答えは下記になります。

res/layout/activity_my.xml

```xml
    <Button
        android:id="@+id/plus1"
        android:layout_width="wrap_content"
        andrid:layout_gravity="center"
        android:text="+1" />
	//ここから↓
    <Button
        android:id="@+id/minus1"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_gravity="center"
        android:text="-1" />
	//ここまで↑
</LinearLayout>
```

android:idでボタンのIDを、android:textでボタンに表示される文字列を設定するのでしたね。今回は、minus1という名前のIDを設定しましたが、アルファベットか数字、一部の記号(アンダーバーやハイフン等)から構成されている文字列であれば、どんなIDを設定しても構いません。しかし、以下の回答はIDを”minus1”として解説していますので、他のIDを設定した場合は適宜読み替えてください。

次に、javaファイルを更新し、minus1Buttonを定義します。plus1Buttonと同じように、minus1Buttonを定義しましょう。

app/src/java/MyActivity.java

```java
private TextView countText;
private Button plus1Button;
//ここから↓
private Button minus1Button;
//ここまで↑
int number;
```

最後に、onCreate()の中身を編集します。まず、findViewById()を用いてactivity_my.xmlに記述したminus1というIDをもつボタンと、先ほど定義したminus1Buttonというものを結びつけます。その後で、minus1Buttonがタップされたときの処理を記述します。

app/src/java/MyActivity.java#OnCreate()

```java
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);

        countText = (TextView)findViewById(R.id.text);
        plus1Button = (Button)findViewById(R.id.plus1);
        //ここから↓
        minus1Button = (Button)findViewById(R.id.minus1);
        //ここまで↑
        number = 0;
        countText.setText(number + "");
        plus1Button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                number = number + 1; 
                countText.setText(number + "");
            }
        });
        //ここから↓
        minus1Button.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) { 
                number--; 
                countText.setText(number + "");
            }
        });
       //ここまで↑
       :
    }
```

実行してみましょう。うまく動いているでしょうか。正しく実行できていれば、以下のような画面になり、+1と-1が実行できるはずです。

![](https://lh4.googleusercontent.com/-3mzp3SnFq9k/U8EhZrYUSMI/AAAAAAAAAbk/fD7-7NsvFFU/s512/CounterApp7.png)

number--;はnumber = number -1;を意味しています。どんどん使ってみましょう。

## クリアボタンの設置

続いて、数値のクリアを行うクリアボタンを設置しましょう。手順はプラスやマイナスの時と同じです。
先ほど行った手順を手がかりに、コードを記述しましょう。まずは、レイアウトの編集を行い、新たにボタンを追加します。

res/layout/activity_my.xml

```xml
    <Button
        android:id="@+id/minus1"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_gravity="center"
        android:text="-1" />

    //ここから↓
    <Button
        android:id="@+id/clear"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_gravity="center"
        android:text="Clear" />
    //ここまで↑
</LinearLayout>
```

次に、MyActivity.javaファイルを更新します。まずは、findViewById()で結びつけるために新しいButtonを定義しonCreate()のなかでfindViewById()を実行し、clearButtonがタップされたときの動作を記述するのでした。

app/src/java/MyActivity.java

```java
public class MyActivity extends Activity {
    /** Called when the activity is first created. */
    private TextView countText;
    private Button plus1Button;
    private Button minus1Button;
    //ここから↓
    private Button clearButton;
    //ここまで↑
    int number;
    :
}
```

app/src/java/MyActivity.java#OnCreate()

```java
    public void onCreate(Bundle savedInstanceState) {
        :
        :
        countText = (TextView)findViewById(R.id.text);
        plus1Button = (Button)findViewById(R.id.plus1);
        minus1Button = (Button)findViewById(R.id.minus1);
        //ここから↓
        clearButton = (Button)findViewById(R.id.clear);
        //ここまで↑
        number = 0;
        countText.setText(number + "");
        plus1Button.setOnClickListener(new View.OnClickListener() {
            //省略
        });
        minus1Button.setOnClickListener(new View.OnClickListener() {
            //省略
        });
        //ここから↓
        clearButton.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                //Clearボタンが押されたときの処理
                number = 0; 
                countText.setText(number + "");
            }
        });
        //ここまで↑
    }
```

以下のような画面になったでしょうか？

![](https://lh6.googleusercontent.com/-_o0SDD9DeIE/U8Iv2Z6ecdI/AAAAAAAAAcQ/jGGtnjddoos/s512/CounterApp8.png)

## 条件分岐

変数の意味は理解できたでしょうか？次は、条件分岐について学習を行います。条件分岐というと難しく感じられますが、
もしテストで50点以上だったら　→　ほめる
50点以下だったら　→　怒る
というようにもし〜だったら、〜をするという処理を条件分岐と呼びます。

今回は、変数numberの数に応じて文字の色を変えていきたいと思います。
条件はなんでも良いのですが、今回は10以上になったら文字色を赤に、-10以下になったら文字色を青にしてみましょう。

このような条件分岐にはif文を使います。

```
if( 条件 ){
    条件が正しかったときの動作
}
```

上記のルールでif文を使います。今回は「numberが10以上であれば文字を赤にする」という命令を書きたいので下記のように記述します。

```java
if( number >= 10){
    countText.setTextColor(Color.RED);
}
```

また、{}に囲われた部分をそれまでの部分より段落を下げてコードを見やすくすることを、インデントを行う、といいます。

Eclipseを使っている場合、自動的にインデントを行なってくれます。きちんとインデントされていないと、どこまでが条件文なのかよくわからなくなってしまうので、きちんとインデントを行うようにしましょう。インデントには一般的にスペースではなく、Tabキーを使います。

また、一括でソースコードのインデントを揃える（コード整形する）ショートカットは下記になります。

```
Command + Shift + F
```
「>=」の部分は比較演算子といって、左辺が右辺以上の場合に正しいと判定します。他にも以下のような比較演算子があります。

＜比較演算子の種類＞

| 演算子 | 記入例 | 説明  |
|:------|:------|:-----|
|  >    | x > y |  xがyよりも大きい場合にtrueを返す。|
|  >=   | x >= y| xがy以上の場合にtrueを返す。|
| <		 | x < y | xがy以下の場合にtrueを返す。|
|  <=   |  x<=y | xがy未満の場合にtrueを返す。|
|  ==   | x == y | xとyが等しい場合にtrueを返す。|
| !=    |  x != y | xとyが等しくない場合にtrueを返す。|

trueを返す」というのはその条件にあてはまっている、という意味です。条件にあてはまっていない場合には、falseを返します。そして、if文の( )の中の条件がtrueの場合に、{ }で囲まれた中のプログラムが実行されます。

### if文を使って文字の色を変化させる

では「numberが-10以下の場合に文字の色を青くする」の条件文は、どのようになるでしょうか？

```java
if(      ){
    countText.setTextColor(Color.BLUE);
}
```

答えは下記になります。

```java
if( number <= -10 ){
    countText.setTextColor(Color.BLUE);
}
```

#### numberが10以上の場合に文字の色を赤く、-10以下の場合に文字の色を青くする

では、この条件文は、MyActivity.javaのどこに追加すれば良いのでしょうか？考えてみましょう。
これまでは、ボタンがタップされた際にとしてcountTextに表示される数値を書き換えていました。今回は、数値を書き換えるだけでなく、色を変更する必要があります。

```java
 countText.setText(number + "");
```

#### 10以上の場合に文字を赤くする

10以上、ということはつまり0から+1ボタンを10回押したときに文字の色を赤くしたい、ということですね。そこで、+1ボタンが押された際に変数numberの値を調べ、10以上だったら色を赤くするようにします。

app/src/java/MyActivity.java

```java
plus1Button.setOnClickListener(new View.OnClickListener() {
    @Override
    public void onClick(View v) {
        number++;
        countText.setText(number + "");
        //ここから↓
        if( number >= 10 ){
            countText.setTextColor(Color.RED);
        }
    }
});
//ここまで↑
```

黄色の部分を追記すると、エラーが発生すると思います。授業の最初のほうでやったことを思い出しし、android.graphics.Colorをインポートしましょう。

app/src/java/MyActivity.java

```java
package com.example.daiki.counter;

import android.app.Activity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.Button;
import android.widget.TextView;
//ここから↓
import android.graphics.Color;
//ここまで↑
```

#### -10以下の場合に文字を青くする

-10になるということは、-9の時に-1ボタンをタップしたということですね。先ほどは+1ボタンが押された際に条件分岐をさせましたが、今度は-1ボタンが押された際に条件分岐をさせます。

```java
minus1Button.setOnClickListener(new View.OnClickListener() {
    @Override
    public void onClick(View v) {
	    number--; 
	    countText.setText(number + "");
	    if( number <= -10 ){
            countText.setTextColor(Color.BLUE);
        }
    }
});
```

実行してみましょう。以下のようになったでしょうか。

![](https://lh6.googleusercontent.com/-flBWSYdBBTs/U8I1ybXm_4I/AAAAAAAAAcw/IFAhrGRzQQ8/s512/CounterApp9.png)

![](https://lh5.googleusercontent.com/-d5GMOCafPwE/U8I1yXu5s9I/AAAAAAAAAcs/iKocsJisc-M/s512/CounterApp10.png)

### if文を使ってコードを整理する

コードはこのままでもいいのですが、if文を使うとボタンがクリックされたあとの処理をまとめてきれいに書く事ができます。まず、以下の部分を追記します。

app/src/java/MyActivity.java

![](https://lh4.googleusercontent.com/-4Hqvd6_kAfA/U8I5O_da_9I/AAAAAAAAAdI/M8KGzuJAeP0/s600/CounterApp11.png)

するとエラーが出てきます。
これは先程のようにOnClickListenerがインポートされていないためのエラーなので先程のようにOnClickListenerをクリックしてoptionキー＋returnキーを押してください。

すると今度は下記のようなエラーが出てきます。

![](https://lh3.googleusercontent.com/-ix0mI0Uewi0/U8I7ZC7kCRI/AAAAAAAAAdg/G02G4F4LWwY/s600/CounterApp12.png)

これはOnClickListenerに必要なメソッドがないというエラーなので、MyActivity.javaの下部に以下のようなコードを記述してください。

app/src/java/MyActivity.java

```java
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
//ここから↓
public void onClick(View v) {
    // TODO Auto-generated method stub

}
//ここまで↑
```

これまでは、下記のようにボタンごとにonClick()というメソッド（これが、ボタンがタップされたときに呼び出されます）を記述していました。

```java
plus1Button.setOnClickListener(new View.OnClickListener() {
     public void onClick(View v) {
         //+1ボタンがタップされた時の処理
     }
});
minus1Button.setOnClickListener(new View.OnClickListener() {
    public void onClick(View v) {
        //+1ボタンがタップされた時の処理 
    }
});
clearButton.setOnClickListener(new View.OnClickListener() {
    public void onClick(View v) {
        //Clearボタンがタップされた時の処理
    }
}); 
```

if文を用いることでひとつのonClick()の中に全てのボタンの処理をまとめることが可能です。先ほど作成してもらった
public void onClick(View v) { }の中を以下のように書き換えます。

app/src/java/MyActivity.java#onClick()

```java
@Override
public void onClick(View v) {
    // TODO Auto-generated method stub
    //ここから↓
    if(v.getId() == R.id.plus1){
        number++; 
        countText.setText(number + "");
        if( number >= 10){
            countText.setTextColor(Color.RED);
        }
    } else if(v.getId() == R.id.minus1){
        number--; 
        countText.setText(number + "");
        if( number <= -10){
            countText.setTextColor(Color.BLUE);
        }
    } else if(v.getId() == R.id.clear){
        number = 0;
        countText.setText(number + "");
        countText.setTextColor(Color.WHITE);
    }
    //ここまで↑
}
```

また、onCreate()を以下のように変更します。

app/src/java/MyActivity.java

```java
public void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    setContentView(R.layout.main);
    countText = (TextView)findViewById(R.id.text);
    plus1Button = (Button)findViewById(R.id.plus1);
    minus1Button = (Button)findViewById(R.id.minus1);
    clearButton = (Button)findViewById(R.id.clear);
    //ここから↓
    plus1Button.setOnClickListener(this);
    minus1Button.setOnClickListener(this);
    clearButton.setOnClickListener(this);
    //ここまで↑追加

    number = 0;
    countText.setText(number + "");
    //ここから↓
    plus1Button.setOnClickListener(new View.OnClickListener() {
        //省略
    });
    minus1Button.setOnClickListener(new View.OnClickListener() {
        //省略
    });
    clearButton.setOnClickListener(new View.OnClickListener() {
        //省略
    });
    //ここまで↑削除
}
```

再度実行してみましょう。先ほどのコードと、処理の内容は基本的には変わっていませんが、だいぶすっきりしました。（クリアボタンを押したときに文字の色を白に戻すようにだけ追加しました。）

onCreate()は起動時に呼ばれるものでしたが、新たに記述したonClick()はボタンがタップされたときに呼ばれるものです。どのボタンが押されても呼び出されるので、ボタンに設定しているIDを取得して条件分岐を行なっています。ボタンのIDは、レイアウトファイル(res/layout/activity_my.xml)のなかで以下のように指定しています。

```xml
<Button	
    android:id="@+id/plus1"//ここ
    android:layout_width="wrap_content"
    android:layout_height="wrap_content"
    android:layout_gravity="center"
    android:text="+1" />
```

v.getId()というのは、タップされたボタンのIDを取得する命令です。
「==」というのも「<=」と同じ比較演算子で、==の左右が等しい場合にtrue、と判定します。
また、else ifというのは、ifと共に用いることで複数の条件判定を行うことができます。

```
if(条件1){
    条件1が正しい時に実行される
}else if(条件2){
    条件2が正しい時に実行される
}else if(条件3){
    同じようにいくつも条件を記述できる
}else{
    どの条件にもあてはまらなかった場合に実行される
}
```

重要な構文なので覚えておきましょう。今回は下記のように記述しています。最後のelseはなくても構わないので、今回は記述していません。

```
@Override
public void onClick(View v) {
    if(v.getId() == R.id.plus1){
        プラスボタンがおされたときの処理
    }else if(v.getId() == R.id.minus1){
        マイナスボタンがおされたときの処理
    }else if(v.getId() == R.id.clear){
        クリアボタンがおされたときの処理
    }
}
```

## 論理演算子

では次に、-9から9までの間は文字の色を白にするようにしましょう。
numberが-9から9までの間は〜をする、という条件分岐はどのようになるでしょうか？

-10以下の場合文字を青にする場合のif文は、以下でしたね。

```java
if( number <= -10 ){
    countText.setTextColor(Color.BLUE);
}
```

### -9から9までの間は文字を白にする

答えは、この様になります。

```java
if( number <= 9 ){
    if( number >= -9){
        countText.setTextColor(Color.WHITE);
    }
}
```

if文の中にif文が入っていますね。このように、複数のif文を入れ子のようにして用いることも可能です。
しかし、このような記述はどんな条件の時に一番内側のプログラムが実行されるのかわかりづらいですね。

また、多くの人は以下のようなコードを想像したのではないでしょうか。

```java
if( -9 => number <= 9 ){
    countText.setTextColor(Color.WHITE);
}
```

数学では、このように値域を記述しますね。しかし、このような記述は、多くのプログラミング言語では実行できません。しかし、多くのプログラミング言語には複数の条件を記述するために論理演算子というものが用意されています。

| && | 右辺左辺が両方正しい時|
|:---|:-------------------|
| ｜｜ | 右辺か左辺が正しい時  |
|  ! | 右辺が正しくないとき   |

例えば、課題5を、論理演算子を用いて書き直すと以下のようになります。

```java
if( number >= -9 && number <= 9 ){
    countText.setTextColor(Color.WHITE);
}
```

では、以下の部分に上記のコードを追記しましょう。

app/src/java/MyActivity.java

```java
public void onClick(View v) {
    // TODO Auto-generated method stub
    if(v.getId() == R.id.plus1){
        number++; 
        countText.setText(number + "");
        if( number >= 10){
            countText.setTextColor(Color.RED);
        }
    //ここから↓
        if( number >= -9 && number <= 9 ){
            countText.setTextColor(Color.WHITE);
        }
    //ここまで↑
    }else if(v.getId() == R.id.minus1){
        number--; 
        countText.setText(number + "");
        if( number <= -10){
            countText.setTextColor(Color.BLUE);
        }
    //ここから↓
        if( number >= -9 && number <= 9 ){
            countText.setTextColor(Color.WHITE);
        }
   //ここまで↑
    }else if(v.getId() == R.id.clear){
        number = 0;
        countText.setText(number + "");
        countText.setTextColor(Color.WHITE);
    }
}
```

## メソッド

　複数の処理をひとつにまとめたものを、メソッドと呼びます。これまでは「命令」といっていたものも、Javaでは全て「メソッド」です。

例えば、setContentView()はレイアウトファイル(xml)を指定するメソッドです。

```java
setContentView(R.layout.activity_my);
```

今回は、R.layout.myを指定しているので、resフォルダの中のlayoutフォルダの中にあるactivity_my.xmlがレイアウトファイルとして読み込まれ、画面が構成されているのです。

また、findViewById()はxmlファイルで宣言したButton等をプログラムで扱えるようにするメソッドです。そもそも、onCreate()自体がアプリケーションの開始時に呼ばれるメソッドだったのです。

先程のコードではという全く同じコードが2箇所に書かれていました。

```java
if( number >= -9 && number <= 9 ){
    countText.setTextColor(Color.WHITE);
}
```

今度はメソッドを使って、これを1つにしてみましょう。メソッドを使って処理をまとめることを、「メソッドを定義する」といいます。

今回は、updateText()という名前のメソッドを、先ほど定義したonClick()メソッドの下部に定義しましょう。updateText()メソッドはその名の通り、TextViewに表示する数値や、色を更新するメソッドです。先程の色を白くするコードだけでなく、表示する数値や色に関する処理は、全てこのメソッドの中で行うようにしましょう。

```java
            countText.setText(number + "");
            countText.setTextColor(Color.WHITE);
        }
    }
    //ここから↓
    private void updateText(){
        countText.setText(number + "");
        if( number <= -10){
            countText.setTextColor(Color.BLUE);
        }else if( number >= 10){
            countText.setTextColor(Color.RED);
        }else if( number > -10 && number < 10 ){
            countText.setTextColor(Color.WHITE);
        }
    }
    //ここまで↑
} 
```

これまでは複数の場所にわかれていたメソッドを、一つにまとめることができました。
このメソッドを使って、MyActivity.javaを以下のように書き換えます。

app/src/java/MyActivity.java#onClick,updateText()

```java
    @Override
    public void onClick(View v) {
        // TODO Auto-generated method stub
        if(v.getId() == R.id.plus1){
            number++; 

            //ここから↓
            countText.setText(number + "");
            if( number >= 10){
                countText.setTextColor(Color.RED);
            }
            if( number >= -9 && number <= 9 ){
                countText.setTextColor(Color.WHITE);
            }
            //ここまで↑削除

        }else if(v.getId() == R.id.minus1){
            number--; 

            //ここから↓
            countText.setText(number + "");
            if( number <= -10){
                countText.setTextColor(Color.BLUE);
            }
            if( number >= -9 && number <= 9 ){
                countText.setTextColor(Color.WHITE);
            }
            //ここまで↑削除

        }else if(v.getId() == R.id.clear){
            number = 0;
            //ここから↓
            countText.setText(number + "");
            countText.setTextColor(Color.WHITE);
        }
            //ここまで↑削除
        //ここから↓
        updateText();
        //ここまで↑追加
    }
```

先ほど習ったif-else構文がまた登場しましたね。どのボタンがタップされても色のチェックは行いたいので、updateText()はif文の中に入れていません。privateやvoidの意味については今後説明していきます。

## Switch-case文

条件分岐には、if-else文の他にもswitch-case文という種類も存在します。Switch-case文は、以下のようになります。

```
switch(変数){
    case 値1:
        処理1;　式の結果が値1と等しかったときに処理される
        break;
    case 値2:
        処理2;　式の結果が値2と等しかったときに処理される
        break;
    case 値3:
        処理3;　式の結果が値3と等しかったときに処理される
        break;
    default:
        処理4;  式の結果が上記のいずれでもなかった場合に処理される
        break;
}
```

switch文は、if文では冗長になってしまうような条件分岐を、すっきりとわかりやすく書けるという特徴があります。

例えば、変数numberが1の時は赤、2のときは青、3の時はグレー、4のときはシアン、5の時は黄色、6の時はマゼンタ、7の時は緑というように色を変化させる場合、if文ではどのように記述するでしょうか？（以下はあくまで例なので、コードは書き換えないでください）

```java
private void updateText(){
    countText.setText(number + "");
    if( number == 1 ){
        countText.setTextColor(Color.RED);
    }else if( number == 2 ){
        countText.setTextColor(Color.BLUE);
    }else if( number == 3 ){
        countText.setTextColor(Color.GRAY);
    }else if( number == 4 ){
        countText.setTextColor(Color.CYAN);
    }else if( number == 5 ){
        countText.setTextColor(Color.YELLOW);
    }else if( number == 6 ){
        countText.setTextColor(Color.MAGENTA);
    }else if( number == 7 ){
        countText.setTextColor(Color.GREEN);
    }else{
        countText.setTextColor(Color.WHITE);
    }
}
```

今回は==比較演算子を使っています。==は、左右の辺が等しいかを調べる比較演算子でしたね。たくさんのelse ifが並んでわかり辛いですよね。switch文を使えば、同じコードがすっきりと書けます。

では、switch文を用いて色の指定を行うメソッド、updateTextBySwitch()を定義してみましょう。onClick()メソッド以下に追加します。

app/src/java/MyActivity.java

```java
    public void onClick(View v) {
        :
    }
    //ここから↓
    private void updateTextBySwitch(){
        countText.setText(number + "");
        switch (number){
            case(1):
                countText.setTextColor(Color.RED);
                break;
            case(2):
                countText.setTextColor(Color.BLUE);
                break;
            case(3):
                countText.setTextColor(Color.GRAY);
                break;
            case(4):
                countText.setTextColor(Color.CYAN);
                break;
            case(5):
                countText.setTextColor(Color.YELLOW);
                break;
            case(6):
                countText.setTextColor(Color.MAGENTA);
                break;
            case(7):
                countText.setTextColor(Color.GREEN);
                break;
            default:
                countText.setTextColor(Color.BLACK);
                break;
        }
    }
    //ここまで↑
    private void updateText(){
        :
    }
```

ぱっと見たときに、何をやっているのかわかりやすいのではないでしょうか？
では、定義したupdateTextBySwitch()メソッドを、updateText()メソッドの代わりに利用してみましょう。

app/src/java/MyActivity.java

```java
    @Override
    public void onClick(View v) {
        // TODO Auto-generated method stub
        if(v.getId() == R.id.plus1){
            number++; 
        }else if(v.getId() == R.id.minus1){
            number--; 
        }else if(v.getId() == R.id.clear){
            number = 0;
        }
        //ここから↓
        updateText();
        //ここまで↑削除

        //ここから↓
        updateTextBySwitch();
        //ここまで↑追加
    }
```

実際に実行してみます。1-7まで順番に色が変化するでしょうか。
switch文を使うときの注意事項は、必ずbreak;を挿入する必要があるということです。break;は以降の処理を行わない、という役割を持っています。break;がないとどうなるでしょうか？試してみましょう。

## コメント

このくらいの規模のプログラムなら良いのですが、プログラムの規模が大きくなってくると、どこで何の処理を行っているのかわからなくなってきます。

いくらJava言語が機械語に比べて人間の言語に近いとはいっても、ぱっと見ただけで処理の内容を理解することは難しいのです。

そこでJava言語を含むプログラミング言語には、コメントという機能がついています。コメント部分は、コンパイラによって無視されるため機械語に翻訳されません。
Javaでは、以下の2種類のコメント記法を用いることが多いです。

### 1行コメント

```
//この行はコメントです
```

### 複数行コメント

```
/*
　ここは
　全て
　コメントです
*/
```

上の「//」は、その行の「//」以降に書かれた文章をコメントにします。また、「/*〜*/」は複数行をコメントとして扱う場合に使います。多くのプログラマは、変数の宣言時やメソッドの定義時にコメントを書きます。

例えば今回のプログラムでは、と書いておけば変数numberの役割を整理しやすいです。

```
int number; //カウントの数字を格納する変数
```

下記のように記述しておけばメソッドの役割を、中のコードを読まなくても把握でき、開発効率を上げることができるでしょう。

```
//色をチェックするメソッド
public void colorCheck(){
```

細かいテクニックですが、きれいなコードを書く上では重要なテクニックなので、覚えておいてください。

## 文字列

Javaでは、文字列を以下のようにして扱うことが出来ます。

```java
String str = "Hello";
```

これは、String型の変数str（本当は変数ではありません、オブジェクトですがまだちゃんと説明をしていないので、変数として話を進めます）に"Hello"という文字列を代入しています。このようにJavaでは、文字列は"（ダブルクオーテーション）で囲う事によって表現します。そして、TextViewやButtonには、文字列を設定することができます。

setTextメソッドは、その名のとおりTextViewに文字列を設定するメソッドです。

```java
String plusStr = "プラス1";
plus1Button.setText(plusStr);
```

のようにすることで、plus1ボタンの文字を従来の+1からプラス1に書き換える事が出来ます。
また、下記のように直接文字列を記述することも可能です。

```java
plus1Button.setText("プラス1");
```

では、int型の変数numberのように文字列以外の変数を表示させたい場合は、どうすれば良いのでしょうか？
これまでの例では下記としてきました。

```java
countText.setText(number + "");
```

これは何をしているのでしょうか？実はこの行は、

```java
String numStr = Integer.toString(number);
countText.setText(numStr); 
```

と記述することも出来ます。`Integer.toString( int型の変数 )`でint型の変数が文字列型の変数に変換されるのです。

ただ、このように記述すると冗長なので下記と記述しています。

```java
countText.setText(number + "");
```

これは、int型（整数）と""(1文字も入っていませんが、空白の文字列型）を足し算すると、int型の整数が文字列型に変換される、というテクニックを利用しています。

大変良く利用するテクニックなので、覚えておきましょう。

## レイアウト

### LinearLayout

最後に、レイアウトについて学習をしましょう。

Androidには標準でいくつかのレイアウトが用意されています。その中でも今回はLinearLayoutというレイアウトを利用しています。 activity_my.xmlの冒頭には以下のような記述がありました。

res/layout/activity_my.xml

```xml
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="fill_parent"
    android:layout_height="fill_parent"
    android:orientation="vertical" >
```

LinearLayoutは、TextViewやButtonといった要素を縦方向(vertical)や横方向(horizontal)に並べるためのレイアウトです。

どちらの向きに並べるのかを、android:orientationで指定します。今回は、縦方向に並べるためにverticalを利用していました。では、android:orientationをhorizontalにしたらどのようになるでしょうか。やってみましょう。

```xml
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="fill_parent"
    android:layout_height="fill_parent"
    android:orientation="horizontal" >
```

![](https://lh3.googleusercontent.com/-wsyJ4r5EPVo/U8JQqGqwswI/AAAAAAAAAeQ/YHNbOfGhxBY/s512/CounterApp13.png)

このようになったでしょうか？先程までは縦方向に並んでいたものが横方向に並ぶのがわかると思います。

でも今回は、TextViewだけは別の段に表示したいですよね。そのような場合には、2重にLinarLayoutを用います。 activity_my.xmlを以下のように書き換えましょう。

res/layout/activity_my.xml

```xml
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="fill_parent"
    android:layout_height="fill_parent"
    android:gravity="center"
	//ここから↓
    android:orientation="horizontal"
	//ここまで↑削除

	//ここから↓
    android:orientation="vertical" >
	//ここまで↑追加

    <TextView
        android:id="@+id/text"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_gravity="center"
        android:text="0"
        android:textSize="100dip" />

	//ここから↓
    <LinearLayout
        android:layout_width="fill_parent"
        android:layout_height="fill_parent"
        android:orientation="horizontal" >
	//ここまで↑追加

        <Button
            android:id="@+id/plus1"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
			//ここから↓
            android:layout_gravity="center"
			//ここまで↑削除
            android:text="+1" />

        <Button
            android:id="@+id/minus1"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
			//ここから↓
            android:layout_gravity="center"
			//ここまで↑削除
            android:text="-1" />

        <Button
            android:id="@+id/clear"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
			//ここから↓
            android:layout_gravity="center"
			//ここまで↑削除
            android:text="Clear" />
	//ここから↓
    </LinearLayout>
	//ここまで↑追加

</LinearLayout>
```

LinearLayoutを2重に用いていることの意味がわかるでしょうか。全体としては、縦方向(vertical)に並べていますが、3つのButtonに関しては横方向(horizontal)に並べています。

![](https://lh6.googleusercontent.com/-vhUI5PdxR-s/U8JQqIK_jwI/AAAAAAAAAeA/O8brNGRqizg/s512/CounterApp14.png)

### fill_parentとwrap_content

しかし、ボタンの右側に大きな空白ができていますね。これは、Buttonのandroid:layout_widthとしてwrap_contentを指定しているためです。

TextViewやButtonはandroid:layout_widthやlayout_heightを指定することで、要素の幅(width)や高さ(height)を指定することが可能です。指定の方法としては、"100px"のように直接ピクセル数で指定をすることも可能です。試しに下記としてみましょう。

```xml
<Button
    android:id="@+id/clear"
    android:layout_width="wrap_content"
    android:layout_height="100px"
    android:text="Clear" />
```

clearボタンの高さが100pxに設定されました。

![](https://lh5.googleusercontent.com/-HVwxT4DQSek/U8JQqEB-gAI/AAAAAAAAAeE/U8A4h7tU338/s512/CounterApp15.png)

しかしこのようなピクセル数を直接指定する設定方法には問題があります。Android端末の画面サイズは様々です。そのため、直接ピクセル数で大きさを指定してしまうと、端末によっては余計な空白ができてしまったり、画面サイズをオーバーしてしまうこともあります。

そこでAndroidには、wrap_contentとfill_parentという便利な指定方法が用意されています。

wrap_contentは、その要素が必要とする文のサイズにする、という意味です。難しく感じられうかもしれませんが、+1やClearといった文字列の長さに応じてボタンの幅が変化していることがわかると思います。

一方、fill_parentは親要素いっぱいのサイズにする、ということです。ちょっと難しいと思うので実際にやってみましょう。

```xml
<Button
    android:id="@+id/clear"
    android:layout_width="fill_parent"
    android:layout_height="wrap_content"
    android:text="Clear" />
```

今度は、右側の空白がClearボタンによって覆われたのではないでしょうか。

![](https://lh6.googleusercontent.com/-GZCI3KLO6As/U8JQq_JYhSI/AAAAAAAAAeU/shyHAHAPdjA/s512/CounterApp16.png)

これは、android:layout_widthとしてfill_parentを指定したためです。fill_parentでは親要素（今回であればLinearLayout）を覆う長さに設定されますから、空白部分にボタンが伸びたのです。

### layout_weightを使った分割表示

では、3つのボタン全てを横に均等に表示させたいと思います。
android:layout_width="fill_parent"を指定したらどうなるでしょうか。

res/layout/activity_my.xml

```xml
	    <Button
			android:id="@+id/plus1"
            android:layout_width="fill_parent"
            android:layout_height="wrap_content"
            android:text="+1" />

        <Button
            android:id="@+id/minus1"
            android:layout_width="fill_parent"
            android:layout_height="wrap_content"
            android:text="-1" />

        <Button
            android:id="@+id/clear"
            android:layout_width="fill_parent"
            android:layout_height="wrap_content"
            android:text="Clear" />
```

結論からいえば、＋１ボタンに覆われて他の2つのボタンが消えてしまいます。
これを防ぐには、android:layout_weightプロパティを利用します。以下のように設定してみましょう。

```xml
		<Button
            android:id="@+id/plus1"
            android:layout_width="0dip"
            android:layout_height="wrap_content"
            android:layout_weight="1"
            android:text="+1" />

        <Button
            android:id="@+id/minus1"
            android:layout_width="0dip"
            android:layout_height="wrap_content"
            android:layout_weight="1"
            android:text="-1" />

        <Button
            android:id="@+id/clear"
            android:layout_width="0dip"
            android:layout_height="wrap_content"
            android:layout_weight="1"
            android:text="Clear" />
```

どうなりましたか？横方向に3つのボタンが均等に並んだと思います。

![](https://lh5.googleusercontent.com/-_bk-nuoh-Ws/U8JQrDaG0cI/AAAAAAAAAeY/53uzRqoTYlM/s512/CounterApp17.png)

android:layout_weightプロパティは要素の表示比率を指定（余白の分割比）するもので、今回であれば画面の幅を1:1:1の比率で割るという意味になります。
※ここでlayout_widthを"0dip"としているのは、layout_weightは「余白」の分割比を指定するものなので横幅を0dipで余白を親要素いっぱいにしてそれをlayout_widthの分割比率でそれぞれの要素を表示させる必要があるためです。

試しに、1:1:2の割合で表示するようにしてみましょう。

res/layout/activity_my.xml

```xml
        <Button
            android:id="@+id/plus1"
            android:layout_width="0dip"
            android:layout_height="wrap_content"
            android:layout_weight="1"
            android:text="+1" />

        <Button
            android:id="@+id/minus1"
            android:layout_width="0dip"
            android:layout_height="wrap_content"
            android:layout_weight="1"
            android:text="-1" />

        <Button
            android:id="@+id/clear"
            android:layout_width="0dip"
            android:layout_height="wrap_content"
            android:layout_weight="1"
            android:text="Clear" />
```

ちゃんと1:1:2の割合で表示されたでしょうか。

では最後に、以下のような画面を構成してみましょう。
では最後に、以下のようなレイアウトになるように、xmlファイルを編集しましょう。

![](https://lh5.googleusercontent.com/-M1N-xvqm6X8/U8ED4twtztI/AAAAAAAAAaE/s406yRvw7Ec/s512/CounterApp.png)

上の画面のようにするため、activity_my.xmlを修正していきます。

res/layout/activity_my.xml

```xml
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="fill_parent"
    android:layout_height="fill_parent"
    android:gravity="center"
    android:orientation="vertical" >

    <TextView
        android:id="@+id/text"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="0"
        android:textSize="100dip" />

    <LinearLayout
        android:layout_width="fill_parent"
        android:layout_height="wrap_content"
        android:orientation="horizontal" >

        <Button
            android:id="@+id/plus1"
            android:layout_width="0dip"
            android:layout_height="wrap_content"
            android:layout_weight="1"
            android:text="+1" />

        <Button
            android:id="@+id/minus1"
            android:layout_width="0dip"
            android:layout_height="wrap_content"
            android:layout_weight="1"
            android:text="-1" />
    </LinearLayout>

    <LinearLayout
        android:layout_width="fill_parent"
        android:layout_height="wrap_content"
        android:orientation="horizontal" >

        <Button
            android:id="@+id/clear"
            android:layout_width="fill_parent"
            android:layout_height="wrap_content"
            android:layout_weight="2"
            android:text="Clear" />
    </LinearLayout>

</LinearLayout>
```

以上でカウントアプリは完成です。Androidは画面レイアウトの設計が少々難しいですが、色々試してみてください。

