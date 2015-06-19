layout: post
title: "第5講 Java基礎"
date: 2015-04-30 22:40:58
comments: true
tags: 
- Android Studio
- Android基本講座
categories: 
- Android Studio
- Android基本講座
---
Androidアプリ開発をしながらJavaプログラミング言語を学習していきます。

<!-- more -->

![](https://lh5.googleusercontent.com/-SC3Oxea9myU/U8Z5Vj20XoI/AAAAAAAAAqs/UcUSqeCqxS4/s512/JavaBaseApp.png)

## 講義のポイント

今回の講義では、ループ・配列・クラスと継承というAndroidアプリケーションを作成する際に欠かせない、Java言語とオブジェクト指向プログラミングの基礎を学習します。

## for文

### プロジェクトの作成

Android Studioを起動して、新規に「Loop」というプロジェクトを作成します。以下の情報にあわせて、各項目を入力して下さい。

![](https://lh4.googleusercontent.com/-RIJmqhbhDlE/U8XyYxwDWJI/AAAAAAAAAmQ/WNmSVOd_Pm4/s600/JavaBaseApp1.png)

ここはなにもせず「Next」をクリックしてください。

![](https://lh6.googleusercontent.com/-9IPJI7U-Fk8/U7kAoWIf8UI/AAAAAAAAAFM/yxa6o1M6p90/s600/%25E3%2582%25A8%25E3%2583%259F%25E3%2583%25A5%25E3%2583%25AC%25E3%2583%25BC%25E3%2582%25BF%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2593.png)

ここもなにもせずに「Next」をクリックしてください。

![](https://lh5.googleusercontent.com/-7zwePN75BGg/U7kApV56xZI/AAAAAAAAAFg/X1NrBhDGh4M/s600/%25E3%2582%25A8%25E3%2583%259F%25E3%2583%25A5%25E3%2583%25AC%25E3%2583%25BC%25E3%2582%25BF%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2594.png)

ここは下記の画面のようにActivity Nameを入力し、「Finish」をクリックしてください。

![](https://lh4.googleusercontent.com/-ClqTQR6RlcQ/U8XyY8sHFcI/AAAAAAAAAmM/6GlRKUh9NNk/s600/JavaBaseApp2.png)

まっさらな状態でアプリを実行し、エラーがでないことを確認します。
画面に「Hello World!」と表示されていればOKです。

前回までの講義では、条件によって異なる処理を実行する、if文やswitch文を勉強しました。では、様々な処理を何度も繰り返して行いたい場合、どうすれば良いのでしょうか？

ほぼ全てのプログラミング言語では、このような処理を、繰り返し文（ループ文）を利用することで記述することができます。言語によって繰り返し文の記述法は様々ですが、Javaではfor文、while文、do-while文の3つの繰り返し文が用意されています。
do-while文を利用する機会は少ないため、まずはfor文とwhile文について学習しましょう。まずは、最も頻繁に用いるfor文について説明します。for文は、以下のように記述します。

```
for( 初期化の式; 繰り返すかどうか調べる式; 変化のための式){
    処理;←これが繰り返し実行されます
} 
```

for文のなかでは:（コロン）ではなく、;（セミコロン）を利用していることに注意しましょう。ループ文は実際に動かしてみないとその動きがわかりにくいので、実際に動かしてみましょう。

activity_loop.xmlとLoopActivity.javaをそれぞれ以下のように変更します。

res/layout/activity_loop.xml

```xml
<RelativeLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:paddingLeft="@dimen/activity_horizontal_margin"
    android:paddingRight="@dimen/activity_horizontal_margin"
    android:paddingTop="@dimen/activity_vertical_margin"
    android:paddingBottom="@dimen/activity_vertical_margin"
    tools:context=".LoopActivity">

    <TextView
		//ここから↓
        android:id="@+id/text"
		//ここまで↑追加

		//ここから↓
		android:text="hello_world" 
		//ここまで↑削除
        android:layout_width="wrap_content"
        android:layout_height="wrap_content" />
</RelativeLayout>
```

app/src/java/LoopActivity.java

```java
public class LoopActivity extends Activity {
	//ここから↓
    TextView mTextView;
	//ここまで↑
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_loop);
		//ここから↓
        mTextView = (TextView)findViewById(R.id.text);
        for( int i = 0; i < 5; i++){
            mTextView.append(String.valueOf(i));
        }
		//ここまで↑
    }
    :
}
```

android.widget.TextViewのインポートを忘れないようにしましょう。

![](https://lh6.googleusercontent.com/-ywPDQmMwJNY/U8X2QrjO1rI/AAAAAAAAAmo/YuXv2ezXgvs/s600/JavaBaseApp3.png)

実行してみると、以下のような画面になったでしょうか？

![](https://lh3.googleusercontent.com/-LSQXCWphA0Q/U8X4SqDrOzI/AAAAAAAAAnE/XERVxLnc4G8/s357/JavaBaseApp4.png)

今回は、0から4までの数字をTextViewに表示させてみました。まず最初にint型の変数iに0を挿入し（初期化処理）、iが5になるまで(繰り返すかどうか調べる)、iの値を1ずつ増加させています（変化のための式）。

そして、これまではTextViewのsetTextメソッドを利用していましたが、今回はappendメソッドを利用して、末尾にテキストを追記しています。追記するテキストは、String.valueOf(i)と指定しています。つまり、int型の変数iの値をString型に変更して、指定しているということです。

今回は条件式としてi<5を指定しています。間違えやすいのですが、iは0で初期化したので、iは0から4までの値が入ります。5にはならないので注意してください。では、以下の課題にチャレンジしてみましょう。

### 0以上10以下の偶数をTextViewに表示させる

解答はひとつではありません。以下に最もスマートな解答を示します。

```java
    mTextView = (TextView)findViewById(R.id.text);
    for( int i = 0; i <= 10; i = i + 2){ // 「i <= 5;」から「i <= 10;」に変更
        mTextView.append(String.valueOf(i));
    }
```

これまではi++(i = i +1)としていた部分を、i = i + 2として2ずつ数を増加させています。また、条件文がi <= 10 となっていることに注意して下さい。 

![](https://lh5.googleusercontent.com/-OemjXWvAs2Q/U8X4Spm5TTI/AAAAAAAAAnI/hdjsWjXHxzM/s503/JavaBaseApp5.png)

### while文

では次に、while文を使ってみましょう。While文は以下の様に利用します。

```
while( 条件 ){
    処理;
}
```

では、while文を用い0以上5未満の整数を順番に表示してみましょう。

LoopActivity.javaを以下のように書き換えます。for文で記述されたループの部分を削除し、以下の部分を追加します。

app/src/java/LoopActivity.java#onCreate()

```java
    mTextView = (TextView)findViewById(R.id.text);

    //ここから↓
    for( int i = 0; i <=10; i = i + 2){
        mTextView.append(String.valueOf(i));
    }
    //ここまで↑削除

    //ここから↓
    int i = 0;
    while( i < 5 ){
        mTextView.append(String.valueOf(i));
        i++;
    }
    //ここまで↑追加
```

このコードの処理内容は、先ほどfor文を用いて記述したものと全く同じです。結果も同じになります。

![](https://lh3.googleusercontent.com/-LSQXCWphA0Q/U8X4SqDrOzI/AAAAAAAAAnE/XERVxLnc4G8/s357/JavaBaseApp4.png)

しかし、for文で記述したコードと比べて、どこの部分がループの処理なのかわかりづらくなっています。ループに関するコードを一行にまとめられることが、while文よりもfor文が好まれる理由です。

また、whileループの中でi++;として変数iの値を１ずつ増加させていますが、これがなければどうなってしまうでしょう？
i++;の部分を消去して実行してみましょう。どうなりましたか？

しばらく反応がなかったあと、アプリケーションは強制終了するはずです。これは、iの値がいつまでたっても0のため、無限ループが発生しているためです。このように、whileループは注意して利用しなければアプリケーションにバグを発生させる原因となります。注意して利用しましょう。

### 指定回数だけループする

今度は、繰り返しの回数を指定できるようにしてみましょう。

繰り返す回数は、ユーザに入力してもらうことにします。文字列を入力および編集するために利用されるウィジェットは、EditText(エディットテキスト)と呼ばれます。

activity_loop.xmlとLoopActivity.javaをそれぞれ以下のように書き換えます。

res/layout/activity_loop.xml

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
    tools:context=".LoopActivity" >
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="fill_parent"
    android:layout_height="fill_parent"
    android:orientation="vertical" >
//ここまで↑削除

	//ここから↓
    <LinearLayout
        android:layout_width="fill_parent"
        android:layout_height="wrap_content"
        android:orientation="horizontal" >

        <EditText
            android:id="@+id/edit"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:layout_weight="5"
            android:inputType="number" >
            <requestFocus />
        </EditText>

        <Button
            android:id="@+id/button"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:layout_weight="1"
            android:text="Loop" />
    </LinearLayout>
	//ここまで↑追加
    <TextView
        android:id="@+id/text"
        android:layout_width="fill_parent"
        android:layout_height="wrap_content"
        tools:context=".LoopActivity" />
//ここから↓
</LinearLayout>
//ここまで↑追加
//ここから↓
</RelativeLayout>
//ここまで↑削除
```

EditTextとButtonを新たに利用するので、インポート文に追加します。

app/src/java/LoopActivity.java

```java
import android.os.Bundle;
import android.app.Activity;
import android.view.Menu;
import android.widget.TextView;
//ここから↓
import android.widget.Button;
import android.widget.EditText;
import android.view.View;
import android.view.View.OnClickListener;
//ここまで↑
```

ウィジェットの変数を追加します。

app/src/java/LoopActivity.java

```java
public class LoopActivity extends Activity {
    TextView mTextView;
    //ここから↓
    EditText mEditText;
    Button mButton;
    //ここまで↑
    @Override
    public void onCreate(Bundle savedInstanceState) {
        :
    }
    :
}
```

最後に、ボタンが押されたときの処理を記述します。

app/src/java/LoopActivity.java

```java
@Override
protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    setContentView(R.layout.activity_loop);
    mTextView = (TextView)findViewById(R.id.text);
    //ここから↓
    int i = 0;
    while(i < 5){
        mTextView.append(String.valueOf(i));
        i++;
    }
    //ここまで↑削除
    //ここから↓
    mEditText = (EditText) findViewById(R.id.edit);
    mButton = (Button) findViewById(R.id.button);
    mButton.setOnClickListener(new OnClickListener() {
        public void onClick(View v) {
            int num = Integer.valueOf(mEditText.getText().toString());
            for (int i = 0; i < num; i++) {
                mTextView.append(String.valueOf(i));
            }
        }
    });
    //ここまで↑追加
}
```

実行してみましょう。EditTextに入力した数字の回数だけループが回っていることが確認できます。EditTextに入力された文字列を取得するには、EditText型の変数に対して、以下のようにメソッドを実行します。

```
mEditText.getText().toString()
```

![](https://lh4.googleusercontent.com/-ql2cmWlyP-w/U8X9u2XT3cI/AAAAAAAAAng/YrBsIZhdLoY/s600/JavaBaseApp6.png)

では、今度は入力した数までをTextViewに表示するのではなく、入力した数までの合計をTextViewに表示するようにしてみましょう。例えば、10と入力したときには55(0+1+2+3+4+5+6+7+8+9)と表示されれば正解です。

### EditTextに入力した数値までの合計をTextViewに表示する

答えは、以下の様になります。

app/src/java/LoopActivity.java#onCreate()

```java
@Override
protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    setContentView(R.layout.main);
 
    mTextView = (TextView)findViewById(R.id.text);
    mEditText = (EditText) findViewById(R.id.edit);
    mButton = (Button) findViewById(R.id.button);
    mButton.setOnClickListener(new OnClickListener() {
        public void onClick(View v) {
            int num = Integer.valueOf(mEditText.getText().toString());
            //ここから↓
            for (int i = 0; i < num; i++) {
                mTextView.append(String.valueOf(i));
            }
            //ここまで↑削除

            //ここから↓
           int sum = 0;
           for(int i = 0; i <= num; i++){
               sum = sum + i;
           }
           mTextView.setText(String.valueOf(sum));
           //ここまで↑追加
        }
    }); 
}
```

![](https://lh3.googleusercontent.com/-trGoo3si2YM/U8X-5gdLDbI/AAAAAAAAAn8/jZi7RNcCCJk/s600/JavaBaseApp7.png)

まず最初に、int型の変数sum(合計値を入れる)を準備し、EditTextに入力された数字の回数だけsumにiを足しています。できましたか？

## 配列

### 配列の仕組み

プログラムの中では、たくさんのデータを扱う場合があります。例えば、２０人学生がいるクラスのテストの点数を扱う場合等が、これにあてはまります。

これまでに学んだ知識でこのようなプログラムを書こうとすると、どのようになるでしょうか？例えば、以下のように書けます。

```java
int test1 = 10;
int test2 = 20;
int test3 = 90;
:
:
int test20 = 80;
```

これは、とても面倒くさいですし、コードが複雑で読みにくくなってしまいます。このような場合に利用すると便利なプログラミングの仕組みが配列(Array)です。

これまでに使ってきた変数(int等)ではひとつの値しか記憶することができませんでした。これに対して配列は、複数の値をまとめて記憶するという特徴を持っています。

配列を使うと、先程のコードは以下のように記述できます。

```java
int test[];
test = new int[20];
test[0] = 10;
test[1] = 20;
test[2] = 90;
:
:
test[19] = 80;
```

Javaで配列を扱う際には、配列の宣言と、配列要素の確保が必要になります。

配列の宣言は、

```java
int test[];
```

の部分で行っています。これは、testという名前のint型の変数を複数格納する配列を作る、という宣言です。このように、配列には同じ型の変数しか格納できないことに注意してください。

一方、配列要素の確保は下記の部分で行っています。

```java
test = new int[20];
```

これで、testという配列にはint型の変数を20個格納するよ、としています。
配列への要素の代入は下記のように記述します。

```java
test[2] = 20;
```

[]の中の番号は添字と呼ばれ、これによって配列の中の要素を指定しています。
Javaの場合、添字は0からはじまるため、最大の番号は要素数-1となっています。

今回の例の場合、test[19];が最後の要素となり、test[20]に数値を代入しようとするとエラーが発生するため注意して下さい。熟練のプログラマでもしやすいミスの一つです。

### プロジェクトの新規作成

新規に「Array」というプロジェクトを作成します。以下の情報にあわせて、各項目を入力して下さい。

![](https://lh5.googleusercontent.com/-1ZMJ05IK3fQ/U8YzRfw5klI/AAAAAAAAAoY/YOmphktv4Rw/s600/JavaBaseApp8.png)

ここはなにもせずに「Next」をクリックしてください。

![](https://lh6.googleusercontent.com/-9IPJI7U-Fk8/U7kAoWIf8UI/AAAAAAAAAFM/yxa6o1M6p90/s600/%25E3%2582%25A8%25E3%2583%259F%25E3%2583%25A5%25E3%2583%25AC%25E3%2583%25BC%25E3%2582%25BF%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2593.png)

ここもなにもせずに「Next」をクリックしてください。

![](https://lh5.googleusercontent.com/-7zwePN75BGg/U7kApV56xZI/AAAAAAAAAFg/X1NrBhDGh4M/s600/%25E3%2582%25A8%25E3%2583%259F%25E3%2583%25A5%25E3%2583%25AC%25E3%2583%25BC%25E3%2582%25BF%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2594.png)

ここはActivity Nameを「ArrayActivity」に変更し、「Finish」をクリックしてください。

![](https://lh6.googleusercontent.com/-DapNEmafpuE/U8YzRU0CzGI/AAAAAAAAAoU/pSB2D9IBdaA/s600/JavaBaseApp9.png)

まっさらな状態でアプリを実行し、エラーがでないことを確認します。
画面に「Hello World!」と表示されていればOKです。

### 配列とループ

実際にプログラムの中で配列を利用する際には多くの場合、先ほど学習したループが併用されます。ではまず、配列に格納した点数を順番に表示するようにしてみます。

activity_java_activity.xmlとJavaActivity.javaをそれぞれ以下のように変更します。

res/layout/activity_java_activity.xml

```xml
<RelativeLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:paddingLeft="@dimen/activity_horizontal_margin"
    android:paddingRight="@dimen/activity_horizontal_margin"
    android:paddingTop="@dimen/activity_vertical_margin"
    android:paddingBottom="@dimen/activity_vertical_margin"
    tools:context=".JavaActibity">

    <TextView
		//ここから↓
        android:id="@+id/text"
		//ここまで↑追加

		//ここから↓
        android:text="@string/hello_world"
		//ここまで↑削除
        android:layout_width="wrap_content"
        android:layout_height="wrap_content" />

</RelativeLayout>
```

インポート文を以下のようにします。

app/src/java/JavaActivity.java

```java
package com.username.array;

import android.os.Bundle;
import android.app.Activity;
import android.view.Menu;
//ここから↓
import android.widget.TextView;
//ここまで↑

public class ArrayActivity extends Activity {
	//ここから↓
    TextView mTextView;
	//ここまで↑
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_java_actibity);
		//ここから↓
        mTextView = (TextView)findViewById(R.id.text);
        int test[];
        test = new int[5];
        test[0] = 10;
        test[1] = 20;
        test[2] = 90;
        test[3] = 80;
        test[4] = 40;
        
        for( int i = 0; i < 5; i++){
            mTextView.append(String.valueOf(test[i]) + ",");
        }
		//ここまで↑
    }
}
```

以下のように表示されるはずです。

![](https://lh4.googleusercontent.com/-fCML-yDkac0/U8Y37dq8YRI/AAAAAAAAAow/NAVKjIc6M_E/s600/JavaBaseApp10.png)

```java
for( int i = 0; i < 5; i++){
    mTextView.append(String.valueOf(test[i]) + ",");
}
```

上記の部分が重要です。先ほど学んだfor文を利用することで、test[i]のような形で配列の要素にアクセス出来ます。

### 配列に入っている全要素の平均を表示する

では、この配列testの中に含まれる数値の平均をTextViewに表示して下さい。
答えは、以下のようになります。

app/src/java/JavaActivity.java#onCreate()

```java
    test[3] = 80;
    test[4] = 40;

    //ここから↓
    for( int i = 0; i < 5; i++){
        mTextView.append(String.valueOf(test[i]) + ",");
    }
    //ここまで↑削除

    //ここから↓
    int sum = 0;
    for( int i = 0; i < 5; i++){
        sum = sum + test[i];
    }
    int mean = sum / 5;
    mTextView.setText(String.valueOf(mean));
    //ここまで↑追加
}
```

この配列の平均値は、48でしたね。

![](https://lh4.googleusercontent.com/-WqqDqMRuUpA/U8Y5LMMlf0I/AAAAAAAAApM/k7WFB5pyPgw/s600/JavaBaseApp11.png)

### 配列の宣言法

ここまで配列を扱う際には、配列の宣言と要素の確保、という２つの作業を２つの文で記述していました。具体的には、以下の部分です。

```java
int test[];
test = new int[5];
```

１行目で配列の宣言を行い、２行目で要素の確保を行っています。しかし実は、この２つの処理は１行にまとめて記述することも可能です。

```java
int test[] = new int[5];
```

またさらに、予め配列の要素が分かっている場合には以下のように記述することも可能です。

```java
int test[] = { 10,20,90,80,40 };
```

このように記述することで、配列の宣言と要素の確保に加えて、配列の初期化も一度に行うことが出来ます。
JavaActivityで利用する配列の初期化を、上記の方法で行ってみましょう。

app/src/java/JavaActivity.java

```java
mTextView = (TextView)findViewById(R.id.text);
//ここから↓
int test[];
test = new int[5];
//ここまで↑削除

//ここから↓
int test[]  = new int[5];
test[0] = 10;
//ここまで↑追加
```

### 配列の長さを取得

配列の要素数（長さ）を取得するには、どうすれば良いのでしょうか？先程のforループでは、下記のようにして、配列の要素数を直接記述していました。

```java
for( int i = 0; i < 5; i++){
    sum = sum + test[i];
}
```

Javaでは、配列変数に続けて.lengthと記述すると配列の長さを取得することができます。例えば、先程のコードでは下記のように記述することで、要素の数「5」を取得出来ます。

```
test.length
```

これらを用いることで、先程のforループは以下のように記述することができるようになります。

app/src/java/JavaActivity.java

```java
int sum = 0;
for( int i = 0; i < test.length; i++){
    sum = sum + test[i];
}
```

配列の要素数を知ることで、コードの記述を楽に行うことができるようになります。

## クラス

### フィールド

先ほど記述したJavaActivity.javaの先頭には、以下のような記述があり、その中に様々な処理を記述しました。

```java
public class ArrayActivity extends Activity{
    処理;
}
```

ここでは、赤文字にしたclass ArrayActivityに注目してください。ここでは、ArrayActivityという名前のクラスを定義しています。

クラスとはなんなのでしょうか？簡単にいえば、ひとつひとつのモノの設計図のようなものです。ここでは、JavaActivityという画面をひとつのモノとして捉え、その設計図を記述しています。

少し理解しづらいので、現実世界のものに置き換えてクラスを理解していきましょう。今回は、「車」というモノに着目し、プログラムを考えていきます。

車は、どのようなデータを持っているでしょうか。まず、それぞれの車にはナンバーが振られていますね。さらに、それぞれの車にはガソリンが積まれています。車によって乗車可能な人数も違いますね。これらは、いわば車の「性質」であると考えられます。

* 車の性質

①ナンバー
②ガソリンの残量
③乗員数

これらの性質を持つ車のクラスは、以下のように記述できます。

```java
class Car{
    int number;
    double gas;
    int crew;
}
```

このように、クラスの性質を表す仕組みは、フィールドと呼ばれます。フィールドは、コード上では変数を用いて実現されます。

### オブジェクトの作成

前節では、フィールドをまとめてクラスを宣言してみました。クラスを実際に利用する際には、その車がどんなナンバーを持つのか、どれだけのガソリンを積んでいるのか、何人乗れるのか、といった具体的なデータを持たせる必要があります。その為に必要になるのが、オブジェクトの作成という作業です。クラスは設計図である、といいましたが、設計図から実際の車を作る、と考えるとわかりやすいでしょう。例えば、12345というナンバーを持ち、20リットルのガソリンを積む、4人乗りの”TestCar”という名前の車を作成するには以下のようにします。

```java
Car TestCar = new Car();
TestCar.number = 12345;
TestCar.gas = 20.0;
TestCar.crew = 4;
```

このようにして作成された一つ一つの車の事を、インスタンス（実体）と呼びます。つまり、クラスという設計書を用いてインスタンス（1台1台の車）を作成するのです。

インスタンスのフィールドにアクセスするには、”.”を使います。

では、実際にクラスを作成し、TextViewに内容を表示するプログラムを作成しましょう。
新規に「Car」というプロジェクトを作成します。以下の情報にあわせて、各項目を入力して下さい。

![](https://lh4.googleusercontent.com/-zyriv8Tw7k4/U8Y-kDR9LVI/AAAAAAAAApk/JCDfzKIJUBE/s600/JavaBaseApp12.png)

ここはなにもせず「Next」をクリックしてください。

![](https://lh6.googleusercontent.com/-9IPJI7U-Fk8/U7kAoWIf8UI/AAAAAAAAAFM/yxa6o1M6p90/s600/%25E3%2582%25A8%25E3%2583%259F%25E3%2583%25A5%25E3%2583%25AC%25E3%2583%25BC%25E3%2582%25BF%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2593.png)

ここもなにもせず「Next」をクリックしてください。

![](https://lh5.googleusercontent.com/-7zwePN75BGg/U7kApV56xZI/AAAAAAAAAFg/X1NrBhDGh4M/s600/%25E3%2582%25A8%25E3%2583%259F%25E3%2583%25A5%25E3%2583%25AC%25E3%2583%25BC%25E3%2582%25BF%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2594.png)

ここはActivity Nameに「CarActivity」と入力し「Finish」をクリックしてください。

![](https://lh5.googleusercontent.com/-WQeUurnyZiE/U8Y-kBCKSLI/AAAAAAAAApo/5adGGibXU8g/s600/JavaBaseApp13.png)

そのまま起動して、エラーがでないことを確認する
まっさらな状態でアプリを実行し、エラーがでないことを確認します。
画面に「Hello World!」と表示されていればOKです。

activity_car.xmlとCarActivity.javaを以下のように編集します。

res/layout/activity_car.xml

```xml
<RelativeLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:paddingLeft="@dimen/activity_horizontal_margin"
    android:paddingRight="@dimen/activity_horizontal_margin"
    android:paddingTop="@dimen/activity_vertical_margin"
    android:paddingBottom="@dimen/activity_vertical_margin"
    tools:context=".CarActivity">

    <TextView
		//ここから↓
        android:id="@+id/text"
		//ここまで↑追加

		//ここから↓
        android:text="@string/hello_world"
		//ここまで↑削除
        android:layout_width="wrap_content"
        android:layout_height="wrap_content" />

</RelativeLayout>
```

app/src/java/CarActivity.java

```java
package com.username.car;

import android.os.Bundle;
import android.app.Activity;
import android.view.Menu;
//ここから↓
import android.widget.TextView;

class Car{
    int number;
    double gas;
    int crew;
}
//ここまで↑
public class CarActivity extends Activity {
    //ここから↓
    TextView mTextView;
    //ここまで↑
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_car);
        //ここから↓
        mTextView = (TextView)findViewById(R.id.text);
        Car TestCar = new Car();
        TestCar.number = 12345;
        TestCar.gas = 20.0;
        TestCar.crew = 4;
        mTextView.setText("ナンバーは" + TestCar.number +"です\n");
        mTextView.append("ガソリン残量は" + TestCar.gas +"リットルです\n");
        mTextView.append("乗員数は" + TestCar.crew +"人です\n");
       //ここまで↑
    }
}
```

以下のように表示されたでしょうか。

![](https://lh4.googleusercontent.com/-FtMH3TPCGCg/U8ZrQko3mBI/AAAAAAAAAqA/rtnub3_c818/s600/JavaBaseApp14.png)

新しく作成したインスタンスに、それぞれの値を代入しています。

### メソッド

前節では、クラスにフィールドを定義することで、様々なモノの性質をプログラムで表現する方法について学びました。
一方、車には以下のような機能があると考えられます。

* 車の機能

①ナンバーを決める
②ガソリンを入れる
③乗員数を決める

車の性能や性質（ナンバー、ガソリン、乗員数）を表示する
これらの機能は、車の性質を変更するものであるといえます。機能は、クラスのメソッドとして実現されます。これまでの講義の中で、メソッドの説明を少しだけ行った事を覚えているでしょうか。

メソッドとは、様々なモノの機能をまとめる働きをするものです。メソッドには普通、複数の処理を記述します。メソッドを作ることを、メソッドを定義する、といいます。

例えば、先ほどあげた車の機能を持つクラスは以下のように実装されます。CarActivity.javaを以下のように編集しましょう。

まず、先ほど定義したCarクラスを以下のようにします。

app/src/java/CarActivity.java

```java
class Car{
    int number;
    double gas;
    int crew;
    //ここから↓
    String text;
 
    void setNumber( int n ){
        number = n;
    }
 
    void setGas( double g ){
        gas = g;
    }
 
    void setCrew( int c ){
        crew = c;
    }
 
    String getText(){
        text = "ナンバーは" + number +"です\n" + "ガソリン残量は" + gas +"リットルです\n" + "乗員数は" + crew +"人です\n";
        return text;
    }
    //ここまで↑
}
```

さらに、TestCarインスタンスを扱っていた部分を以下のように変更します。これまでと同様に、オレンジの部分を追記/し、灰色の部分を削除します。

app/src/java/CarActivity.java

```java
Car TestCar = new Car();
//ここから↓
TestCar.number = 12345;
TestCar.gas = 20.0;
TestCar.crew = 4;
mTextView.setText("ナンバーは" + TestCar.number +"です\n");
mTextView.append("ガソリン残量は" + TestCar.gas +"リットルです\n");
mTextView.append("乗員数は" + TestCar.crew +"人です\n");
//ここまで↑削除
//ここから↓
TestCar.setNumber(12345);
TestCar.setGas(20.0);
TestCar.setCrew(4);
mTextView.setText(TestCar.getText());
//ここまで↑追加
```

先ほどと同じ画面になったのではないでしょうか。先程までは、直接インスタンスのフィールドにアクセスして値を変更していましたが、今回はメソッドを介してフィールドにアクセスしていることがわかるでしょうか？Javaの様なオブジェクト指向言語では、カプセル化、といって直接インスタンスのフィールドを書き換えることが出来ないようにし、メソッドを介してフィールドの値を変更する事が一般的です。なぜでしょうか？

### カプセル化

カプセル化のメリットはいくつかありますが、ひとつはありえない値をインスタンスのフィールドに代入できなくすることで、プログラムのバグを減らす事ができることです。

例えば、先程までのコードだと

TestCar.gas = -10.0;

のようなおかしな代入が可能です。（ガソリンの残量が負数って奇妙ですよね）カプセル化の仕組みを用いる事により、このようなおかしな値の代入を防ぐことが可能になります。先程のコードを以下のように書き換えましょう。まずは、Carクラスの以下のメソッドを書き換えます。

app/src/java/CarActivity.java

```java
void setNumber( int n ){
    //ここから↓
    if( n > 0 ){
        number = n;
    }
    //ここまで↑
 }

void setGas( double g ){
    //ここから↓
    if( g > 0 ){
        gas = g;
    }
   //ここまで↑
}

void setCrew( int c ){
    //ここから↓
    if( c > 0 ){
        crew = c;
    }
   //ここまで↑
}
```

このようにすることで、負数がインスタンスのフィールドに代入されることを防ぐことができます。しかしこのままでは、CarTest.number = -10のようにして直接フィールドの値を書き換えることができてしまいます。
クラスの外から直接値を書き換えることを防ぐには、フィールドをprivateメンバとして定義します。（クラスに定義されているフィールドやメソッドをまとめてメンバといいます）。具体的には以下のようにします。

app/src/java/CarActivity.java

```java
class Car{
    //それぞれの変数にprivateを追加
    private int number;
    private double gas;
    private int crew;
    private String text;
    :
    :
}
```

このように、privateメンバとしてフィールドを定義することで、クラスの外から勝手にアクセスすることができなくなります。一方、setNumber()やsetGas()といったメソッドはクラスの外からアクセスすることが一般的ですから、publicメンバとして定義することが一般的です。まとめると、Carクラスは以下のようになります。

app/src/java/CarActivity.java

```java
class Car{
    private int number;
    private double gas;
    private int crew;
    private String text;
    //それぞれのメソッドにpublicを追加
    public void setNumber( int n ){
        if( n > 0 ){
            number = n;
        }
    }

    public void setGas( double g ){
        if( g > 0 ){
            gas = g;
        }
    }

    public void setCrew( int c ){
        if( c > 0 ){
            crew = c;
        }
    }

    public String getText(){
        text = "ナンバーは" + number +"です\n" + "ガソリン残量は" + gas +"リットルです\n" + "乗員数は" + crew +"人です\n";
        return text;
    }
}
```

まとめると、データと機能をひとまとめにし、メンバを保護する機能をカプセル化といいます。カプセル化を行うことで、誤りの起きにくいプログラムを作成することができるようになり、生産性が上がります。フィールドはprivateメンバとして、メソッドはpublicメンバとして定義することが多い、と覚えておいて下さい。

### 他のファイルに定義する

これまでは、CarActivity.javaというファイルの中にCarクラスを定義してきましたが、長くなってきたので独自のファイルに定義しましょう。多くの場合、ひとつのファイルにはひとつのクラスを定義します。以下のように、Carプロジェクトのsrcフォルダのcom.example.username.carの上で右クリックしNew → Classを選択します。

![](https://lh5.googleusercontent.com/-1y8Cm58tUE0/U8Z5VikQkXI/AAAAAAAAAqo/4lAABLNCW8Y/s600/JavaBaseApp15.png)

Create New Class画面が表示されるのでName:にCarと入力し、OKボタンをクリックしてください。

![](https://lh3.googleusercontent.com/-htSOV3dE2X4/U8Z5Vhk6GTI/AAAAAAAAAqg/zTjLN3n0uR0/s600/JavaBaseApp16.png)

するとエラーが出ると思います。これは先程CarActivity.javaファイルですでにCarが存在しているからです。
なのでまずCarActivity.javaファイルからCarクラスの部分を丸ごと削除してください。すると下記のようになると思います。

app/src/java/CarActivity.java

```java
package com.example.username.car;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;

public class CarActivity extends Activity {

    TextView mTextView;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);

        mTextView = (TextView)findViewById(R.id.text);

        Car TestCar = new Car();
        TestCar.setNumber(12345);
        TestCar.setGas(20.0);
        TestCar.setCrew(4);
        mTextView.setText(TestCar.getText());
    }
}
```

次に新しく作成したCar.javaを、以下のように編集します。

```java
package com.example.username.car;

public class Car{
//ここから↓
    private int number;
    private double gas;
    private int crew;
    private String text;
 
    public void setNumber( int n ){
        if( n > 0 ){
            number = n;
        }
    }

    public void setGas( double g ){
        if( g > 0 ){
            gas = g;
        }
    }

    public void setCrew( int c ){
        if( c > 0 ){
            crew = c;
        }
    }

    public String getText(){
        text = "ナンバーは" + number +"です\n" + "ガソリン残量は" + gas +"リットルです\n" + "乗員数は" + crew +"人です\n";
        return text;
    }
//ここまで↑
}
```

先程までと同じように実行できたでしょうか。

### コンストラクタ

これまでクラスの中には、フィールドとメソッドを記述してきました。これらに加えて、クラスの中にはコンストラクタというものを定義することができます。コンストラクタは、インスタンスが生成されるときに呼び出される特別なメソッドです。（厳密にはメソッドではありませんが、そのような理解で構いません）。コンストラクタは、必ずクラス名と同じである必要があります。コンストラクタには、インスタンス生成時の初期値を設定する等の処理を記述することが一般的です。例えば車クラスであれば、ナンバーやガソリン、乗員数等のフィールドの初期値に0を設定する、といった処理をまとめておくことができます。

では、初期値を設定するCarクラスのコンストラクタを定義してみましょう。

app/src/java/Car.java

```java
    private int crew;
    private String text;
    //ここから↓
    public Car(){
        number = 1;
        gas = 0.1;
        crew = 1;
    }
    //ここまで↑
    public void setNumber( int n ){
        :
    }
```

では実際に、コンストラクタの働きをみてみましょう。CarActivity.javaを以下のように編集（利用しているセッタを削除）します。フィールドに値をセットするメソッドのことをセッタ、フィールドの値を取得するメソッド（CarクラスではgetText()）のことをゲッタといいます。

app/src/java/CarActivity.java#onCreate()

```java
    mTextView = (TextView)findViewById(R.id.text);

    Car TestCar = new Car();
    //ここから↓
    TestCar.setNumber(12345);
    TestCar.setGas(20.0);
    TestCar.setCrew(4);
    //ここまで↑削除
    mTextView.setText(TestCar.getText());
```

コンストラクタで設定した初期値が反映されていたでしょうか。

![](https://lh6.googleusercontent.com/-U8gRlrLzl_4/U8Z5WNgfSEI/AAAAAAAAArI/dP3ponnj3oA/s599/JavaBaseApp17.png)

### メソッドのオーバーロード

Javaでは、オーバーロードという仕組みを利用することで、同じ名前を持つメソッドを複数定義することができます。例えば、Carクラスに定義されているセッタ(setNumber,setGas,setCrewメソッド)削除して代わりに以下のメソッドを追加してください。

まず、Carクラスに定義されているセッタを全て削除します。

app/src/java/Car.java

```java
    //すべて削除
    public void setNumber( int n ){
        //省略
    }

    public void setGas( double g ){
        //省略
    }

    public void setCrew( int c ){
        //省略
    }
```

かわりに、以下のコードを追加します。

app/src/java/Car.java

```java
    public Car(){
        number = 1;
        gas = 0.1;
        crew = 1;
    }
    //ここから↓
    public void setCar( int n ){
        if( n > 0 ){
            number = n;
        }
    }

    public void setCar( double g ){
        if( g > 0 ){
            gas = g;
        }
    }
     
    public void setCar( int n, double g){
        if( n > 0 ){
            number = n;
        }
        if( g > 0 ){
            gas = g;
        }
    }
    public void setCar( int n, double g, int c){
        if( n > 0 ){
            number = n;
        }
        if( g > 0 ){
            gas = g;
        }
        if( c > 0 ){
            crew = c;
        }
    }
    //ここまで↑
```

このクラスには、setCar()メソッドが4つもあります。このように、同じ名前の複数のメソッドを同じクラス内に定義することをメソッドのオーバーロードといいます。ただし、メソッドをオーバーロードする際には必ず各メソッドの引数の型、個数が異なるようにしなければなりません。例えば今回であれば

```java
setCar( int n )
setCar( double g )
setCar( int n , double g )
setCar( int n, double g, int c)
```

というようにそれぞれのメソッドの名前は同一でも引数の型や個数が異なっていることがわかります。それではこれらのメソッド使ってみましょう。今回は、わかりやすいように複数のインスタンスを生成します。
まずは、activity_car.xmlを編集してTextViewを複数設置しましょう。

res/layout/activity_car.xml

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
    tools:context=".CarActivity" >
//ここまで↑削除
//ここから↓
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="fill_parent"
    android:layout_height="fill_parent"
    android:orientation="vertical" >
//ここまで↑追加
    <TextView
        android:id="@+id/text"
        android:layout_width="fill_parent"
        android:layout_height="wrap_content" />
	//ここから↓
    <TextView
        android:id="@+id/text2"
        android:layout_width="fill_parent"
        android:layout_height="wrap_content" />

    <TextView
        android:id="@+id/text3"
        android:layout_width="fill_parent"
        android:layout_height="wrap_content" />

</LinearLayout>
//ここまで↑追加
//以下削除
</RelativeLayout>
```

CarActivity.javaを以下のように編集します。

app/src/java/CarActivity.java

```java
public class CarActivity extends Activity {

    TextView mTextView;
    //ここから↓
    TextView mTextView2;
    TextView mTextView3;
    //ここまで↑
    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);

        mTextView = (TextView)findViewById(R.id.text);
        //ここから↓
        mTextView2 = (TextView)findViewById(R.id.text2);
        mTextView3 = (TextView)findViewById(R.id.text3);
        //ここまで↑
        Car TestCar = new Car();
        //ここから↓
        TestCar.setCar(54321);
        //ここまで↑
        mTextView.setText(TestCar.getText());
        //ここから↓
        Car TestCar2 = new Car();
        TestCar2.setCar(200.0);
        mTextView2.setText(TestCar2.getText());
 
        Car TestCar3 = new Car();
        TestCar3.setCar(67891,11.1,8);
        mTextView3.setText(TestCar3.getText());
        //ここまで↑
    }
}
```

以下のように表示されたでしょうか。

![](https://lh3.googleusercontent.com/-EP8vZ2cktpc/U8Z5X2NJoTI/AAAAAAAAArQ/9Fw3xmnW6Zg/s600/JvaBaseApp18.png)

setCar()という同じメソッドを実行したにも関わらず、実際に行われている処理が異なることがわかると思います。似たような複数の処理をオーバーロードしておけば、ひとつのメソッド名を覚えておくだけで、最適な処理を行わせることが可能になります。

### コンストラクタのオーバーロード

メソッドと同様に、コンストラクタもオーバーロードすることが可能です。インスタンスの生成時に値のセットも行う便利なコンストラクタを作ってみましょう。

app/src/java/Car.java

```java
    public Car(){
        number = 1;
        gas = 0.1;
        crew = 1;
    }
    //ここから↓
    public Car(int n, double g, int c){
        setCar( n, g, c);
    }
    //ここまで↑
    public void setCar( int n ){
        :
    }
```

CarActivity.javaのTestCar2インスタンスの生成を行っている部分を、以下のように変更し、オーバーロードしたコンストラクタを利用するようにしてみます。

app/src/java/CarActivity.java#onCreate()

```java
    Car TestCar = new Car();
    TestCar.setCar(54321);
    mTextView.setText(TestCar.getText());
    //ここの括弧内の数字を追加
    Car TestCar2 = new Car(11111,34.5,6);
    //ここから↓
    TestCar2.setCar(200.0);
    //ここまで↑削除
    mTextView2.setText(TestCar2.getText());
     
    Car TestCar3 = new Car();
    TestCar3.setCar(67891,11.1,8);
    mTextView3.setText(TestCar3.getText());
```

TestCar2では、オーバーロードされたコンストラクタが利用されていますね。

![](https://lh6.googleusercontent.com/-KzcVNs2kPyk/U8Z5WZ0io_I/AAAAAAAAAq0/XKctC-TGcfc/s600/JavaBaseApp19.png)

### 継承

#### 継承の基本

クラスについて、理解が深まったでしょうか。

```
public class ArrayActivity extends Activity{
 処理;
}
```

先程はArrayActivity.javaの赤字の部分（class ArrayActivity）に注目しましたが、今度は青字の部分（extends Activity）にも注目しましょう。赤字と青字の部分をまとめると、Activityという設計図を参考にしてArrayActivityという設計書を定義する、という意味になります。このように、他のクラスを利用して新しいクラスを定義することを、クラスを拡張(extends)する、といいます。新しいクラスには、既存のクラスのメンバ（フィールドやメソッド）が受け継がれます。この仕組みを、継承(inheritance)と呼び、既存のクラスをスーパークラス、新しく作成したクラスをサブクラスと呼びます。

例えば、車クラスを拡張してトラッククラスを作成してみましょう。つまり、CarクラスをスーパークラスとしたサブクラスとしてTrackクラスを作成する、ということです。先ほどと同じ手順で新しいクラスファイルを作成します。

![](https://lh5.googleusercontent.com/-1y8Cm58tUE0/U8Z5VikQkXI/AAAAAAAAAqo/4lAABLNCW8Y/s600/JavaBaseApp15.png)

Create New Class画面が表示されるのでName:にTrackと入力し、OKボタンをクリックしてください。

![](https://lh3.googleusercontent.com/-JgGdJsxVIdU/U8Z5W7IttaI/AAAAAAAAArE/fhFaezR6M9M/s600/JavaBaseApp20.png)

新しく作成したトラッククラスを以下のように編集します。

app/src/java/Track.java

```java
package com.example.username.car;

//class Trackの後ろにextends Carを追加
public class Track extends Car {
    //ここから↓
    private int load;
 
    public Track(){
    load = 0;
    }
 
    public void setLoad( int l ){
        load = l;
    }
 
    public String getLoad(){
    return "積荷の重さは" + load + "kgです"
    }
    //ここまで↑
}
```

トラッククラスには、積荷の重さを示すloadフィールドと、積荷の重さをセットするsetLoad()メソッド、積まれた積荷の重さを取得するgetLoad()メソッドを実装しました。では、トラッククラスを実際に使ってみましょう。

app/src/java/CarActivity.java#onCreate()

```java
    Car TestCar2 = new Car(11111,34.5,6);
    mTextView2.setText(TestCar2.getText());
    //ここから↓
    Car TestCar3 = new Car();
    TestCar3.setCar(67891,11.1,8);
    mTextView3.setText(TestCar3.getText());
    //ここまで↑削除
    //ここから↓
    Track TestTrack = new Track();
    TestTrack.setCar(67891,11.1,8);
    TestTrack.setLoad(500);
    mTextView3.setText(TestTrack.getText());
    mTextView3.append(TestTrack.getLoad());
    //ここまで↑追加
```

TrackクラスはCarクラスを継承しているので、setCar()やgetText()といったCarクラスのメソッドを利用することができますし、Trackクラスにしか存在しないsetLoad()メソッド等も当然利用することが出来ています。

#### 継承とオーバーライド

先程は、メソッドのオーバーロードについて説明しました。オーバーロードは、メソッド名が同じで引数の形式が異なるメソッドを定義すること、でした。

一方、クラスはオーバーライドという仕組みも持っています。オーバーライドとは、スーパークラスと全く同じメソッド名、引数の数、型を持つメソッドを定義すること、です。オーバーロードとオーバーライドは似ていますが、全く違う仕組みなので混ざらないようにしましょう。

では、CarクラスのgetText()メソッドをオーバーライドしてみましょう。まずは、サブクラスからスーパークラスのメンバにアクセスできるようにCarクラスを編集します。

app/src/java/Car.java

```java
public class Car {
//ここのprivateをすべてprotectedに変更
    protected private int number;
    protected private double gas;
    protected private int crew;
    protected private String text;
    :
    :
}
```

privateに設定をしておくと、クラスの外からのアクセスができなくなってしまうので、サブクラスからもアクセスできなくなってしまいます。サブクラスとスーパークラスは密接な関係があることが多いので、これでは不都合です。代わりにprotectedを指定することで、例外的にサブクラスからはアクセスできるようになります。覚えておきましょう。また、Trackクラスを以下のように編集します。

app/src/java/Track.java

```java
public class Track extends Car {
    private int load;

    public Track(){
        load = 0;
    }
    //ここから↓
    public Track( int n, double g, int c, int l){
        super( n, g, c);
        load = l;
    }
    //ここまで↑
    public void setLoad( int l ){
        load = l;
    }

    public String getLoad(){
        return "積荷の重さは" + load + "kgです";
    }
    //ここから↓
    public String getText(){
        text = "ナンバーは" + number +"です\n" + "ガソリン残量は" + gas +"リットルです\n" + "乗員数は" + crew +"人です\n" + "積荷の重さは" + load + "kgです";
        return text;
    }
    //ここまで↑
}
```

CarクラスのgetText()メソッドと異なり、今回オーバーライドしたTrackクラスのgetText()では、積荷の重さも表示されるようになっています。

また、コンストラクタをオーバーライドし、様々な要素を指定して初期化できるようにしました。super( n, g, c);では、スーパークラスのコンストラクタを呼び出しています。

最後に、CarActivity.javaのTrackクラスを利用している部分を以下のように書き換え、今回作成したコンストラクタと、オーバーライドしたgetText()メソッドを利用するようにしてみます。

app/src/java/CarActivity.java

```java
//ここから↓
Track TestTrack = new Track(65441,60.0,2,200);
mTextView3.setText(TestTrack.getText());
//ここまで↑追加
//以下削除
Track TestTrack = new Track();
TestTrack.setCar(67891,11.1,8);
TestTrack.setLoad(500);
mTextView3.setText(TestTrack.getText());
mTextView3.append(TestTrack.getLoad());
```

以下のような画面になったでしょうか。

![](https://lh5.googleusercontent.com/-280w63FnH8s/U8Z5XCxW-MI/AAAAAAAAArA/ljFVyHy4Xio/s600/JavaBaseApp21.png)

以上で、Javaにおけるクラスと継承の説明を終わります。これだけでも1冊の本が書けるくらいの内容で、とても全てを説明しきれていません。今回は、Androidアプリケーション開発に最低限必要な部分に絞って説明を行いました。