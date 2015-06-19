layout: post
title: "第4講 生まれた日を知るアプリ"
date: 2015-04-30 22:40:58
comments: true
tags: 
- Android Studio
- Android基本講座
categories: 
- Android Studio
- Android基本講座
---
誕生日を入力すると誕生日に関する情報を表示する「生まれた日を知るアプリ」の作成を通して、Androidアプリケーション開発において大切な概念であるActivityとIntentに関する学習を行います。

<!-- more -->

![](https://lh3.googleusercontent.com/-oziiAckDfjg/U8UIMRrIgPI/AAAAAAAAAhQ/smlaSZxfzHo/s512/BirthdayApp13.png)

## 講義のポイント

本講義では、誕生日を入力すると誕生日に関する情報を表示する「生まれた日を知るアプリ」の作成を通して、Androidアプリケーション開発において大切な概念であるActivityとIntentに関する学習を行います。

本講義で作成するアプリの画面

![](https://lh3.googleusercontent.com/-oX8CbBwGCpY/U8TpPwVDcTI/AAAAAAAAAf0/WcDLQwXUuqA/s447/BirthdayApp7.png) ![](https://lh6.googleusercontent.com/-a7mFXQ35fqI/U8TpQBU5-OI/AAAAAAAAAfk/s0VYmRjOs-8/s445/BirthdayApp8.png) ![](https://lh3.googleusercontent.com/-jH6xpYDrbIg/U8TpQmcEwuI/AAAAAAAAAfw/43Kq6VuIRYM/s474/BirthdayApp9.png)

## Androidの主要コンポーネント

Androidアプリケーションは、コンポーネントと呼ばれるオブジェクトから構成されます。
コンポーネントには、以下の4種類のものがあります。

* アクティビティ(Activity)
* サービス(Service)
* ブロードキャストレシーバ(Broadcast Receiver)
* コンテントプロバイダ(Content Provider)

それぞれ、以下のような機能を持ちます。

### Activity

アクティビティとは、画面を生成する機能を持っているコンポーネントです。ひとつのアクティビティは、ひとつの画面を生成します。したがって、複数の画面を持つアプリを作成する場合は、画面の数だけActivityを作成することとなります。

Androidアプリケーションを開発する際に、最も多く利用するコンポーネントです。アクティビティの仕組みについては、次章でもう少し詳しく説明します。

### Service

サービスは、時間のかかる処理をバックグラウンドで（画面の背後で）実行し続けたい、という時に利用されるコンポーネントです。アクティビティは、そのアクティビティが生成した画面が表示されていない場合、アプリケーションの処理が中断させられてしまう可能性があります。

例えば、音楽再生を行うメディアプレイヤーアプリケーションを作っているとします。曲の再生を、アクティビティで行っているとそれとは違う画面が表示されているときに音楽の再生が中断されてしまう可能性がある、ということです。曲の再生を、サービスを使って行うことで、途切れることなく曲をバックグラウンドで再生し続けることができるようになります。

### Broadcast Receiver

ブロードキャストレシーバは、ブロードキャストの通知を受信し、対応する動作を行うコンポーネントです。例えば、充電池の状態の変化や電話の着信があった場合に、Androidシステムは全てのアプリケーションに対して通知を行います。ブロードキャストレシーバを用いることで、これらの通知を受け取った時の処理をアプリケーション内で記述することができます。

### Content Provider

コンテントプロバイダは、複数のアプリケーションでデータを共有したい、というときに使われるコンポーネントです。通常、アプリケーションのデータはそのアプリケーションのみでしか利用できませんが、コンテントプロバイダを利用することでデータを他のアプリケーションに公開し、データを他のアプリケーションから利用することができるようになります。
　例えば、Content Providerを利用したアプリケーションに，標準でインストールされている電話帳があります。電話帳は，それ自身でデータを保存せず，別途定義したContent Provider経由で連絡先データを管理しています。そのデータは，ユーザーが認めた他のアプリケーションからも参照できるようになっています。Androidアプリケーションマスターコースにおいても、コンテントプロバイダを介して電話帳の編集を行うアプリケーションの作成を行います。

## Activityのライフサイクル

Activityはandroidにおいて最も重要な要素の一つです。
　第1講でも触れたようにActivityは「一つの画面」を表します。(一部例外もあります。) 
　Activity(画面)は生成されて、表示され、別の画面が表示されると、画面上から消えます。この一連の流れをActivityのライフサイクルと呼び、次の図によって表されます。

![](https://lh3.googleusercontent.com/-5MQHKSVEWlQ/U8TpOFrGseI/AAAAAAAAAe8/nGA3l5EqtSk/s512/BirthdayApp1.png)

|メソッド名|説明|
|---|---|
|onCreate()|Activityが生成された時に呼び出されるメソッド|
|onStart()|Activityが開始する時に呼び出されるメソッド|
|onResume()|Activityが最前面に表示された時に呼ばれるメソッド|
|onPause()|別のActivityが最前面に表示される時に呼ばれるメソッド|
|onStop()|Activityが画面上に表示されなくなった時に呼ばれるメソッド|
|onDestroy()|Activityが破棄される時に呼ばれるメソッド|

今までのアプリはonCreate()の中に処理を書いていましたが、このonCreate()というのはActivityのライフサイクルの一番最初の項目です。

他の項目については、今までの講義では使用していませんが、今後の講義の中で出てきますので、随時解説していきます。

Activityは「一つの画面」を表し、これがandroidアプリの根幹となっていることを覚えておいて下さい。

また、Activityを追加した時は、追加した画面をAndroidManifest.xmlに追加する必要があることも併せて覚えておきましょう。（あとで実際に編集します！）

## Intent

Intentは直訳すると「意図」(やりたいこと)です。先にあげたAndroidのコンポーネントのうち、アクティビティ、サービス、ブロードキャストレシーバを起動するためにはインテントを利用する必要があります。具体的には、

- 別の画面(Activity)を呼びたい
- 別のアプリを呼びたい
- メールを送りたい
- 電話をかけたい

等、別の画面やアプリを呼び出して「やりたいこと」がある時、androidにおいてはIntentが用いられます。

一番多く使われるパターンとしては一番上のパターン、すなわち画面(Activity)間の連携です。
今回のアプリでもこの画面間の連携にIntentを用いています。

## 生まれた日アプリにおけるActivityとIntent

生まれた日アプリは、2つのアクティビティ（TopActivityとResultActivity）から構成されます。左側の画像がTopActivity、右側の画像がResultActivityです。

![](https://lh3.googleusercontent.com/-oX8CbBwGCpY/U8TpPwVDcTI/AAAAAAAAAf0/WcDLQwXUuqA/s447/BirthdayApp7.png) ![](https://lh6.googleusercontent.com/-a7mFXQ35fqI/U8TpQBU5-OI/AAAAAAAAAfk/s0VYmRjOs-8/s445/BirthdayApp8.png)

まず、TopActivityで生年月日を選択します。そして、TopActivityからResultActivityに対してintentを発行して画面遷移を行います。画面遷移を行う際に、入力された生年月日をTopActivityからResultActivityに渡しています。

さらに、ResultActivityからはintentを利用することで、他のアプリケーションを起動することができます。このようにintentは、他のアクティビティの起動だけでなく他のアプリケーションの起動にも用いることができます。

## プロジェクト作成

Android Studioを起動して、新規に「BirthDay」というプロジェクトを作成します。以下の画像にあわせて、各項目を入力して下さい。

![](https://lh3.googleusercontent.com/-UOfF8iLOvxg/U8TpOE8aDWI/AAAAAAAAAfE/Za2LX1SZdZ4/s600/BirthdayApp2.png)

ここはなにも変更せず「Next」ボタンをクリックしてください。

![](https://lh6.googleusercontent.com/-9IPJI7U-Fk8/U7kAoWIf8UI/AAAAAAAAAFM/yxa6o1M6p90/s600/%25E3%2582%25A8%25E3%2583%259F%25E3%2583%25A5%25E3%2583%25AC%25E3%2583%25BC%25E3%2582%25BF%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2593.png)

ここもなにもせず「Next」ボタンをクリックしてください。

![](https://lh5.googleusercontent.com/-7zwePN75BGg/U7kApV56xZI/AAAAAAAAAFg/X1NrBhDGh4M/s600/%25E3%2582%25A8%25E3%2583%259F%25E3%2583%25A5%25E3%2583%25AC%25E3%2583%25BC%25E3%2582%25BF%25E6%25A7%258B%25E7%25AF%2589%25EF%25BC%2594.png)

ここは以下の項目を「TopActivity」に変更し「Finish」ボタンをクリックしてください。

![](https://lh3.googleusercontent.com/-xw4FXzmf_rI/U8UBkEh932I/AAAAAAAAAgM/vu0yovQjxrQ/s600/BirthdayApp10.png)

まっさらな状態で１度実行してみてエラーが出ないことを確認してください。
画面に「Hello World!」と表示されていればOKです。

## Top画面の作成


### strings.xmlの編集

まず、アプリ内で使用する文字列を定義しておきます。
strings.xmlは、resフォルダの中のvaluesフォルダの中にありますので、もし初期状態で表示されていない場合は左側の小さい三角形をクリックしましょう。

![](https://lh4.googleusercontent.com/-JWt-YT2ZLYc/U8UCMDqGLgI/AAAAAAAAAgg/Bd8NLvGs-po/s512/BirthdayApp11.png)

また、初期状態ではResourcesタブが全面に表示されていると思いますが、strings.xmlというタブをクリックしましょう。
strings.xmlを開き、以下の黄色の部分をコピー＆ペーストして追加しておきます。

res/values/strings.xml

```xml
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="app_name">Birthday</string>
    <string name="hello_world">Hello world!</string>
    <string name="action_settings">Settings</string>
	//ここから↓
    <string name="message">Input your Birthday</string>
    <string name="btn_ok">OK</string>
    <string name="btn_mail">send mail</string>
	//ここまで↑

</resources>
```

### layoutファイルの編集

次にレイアウトファイルを編集します。まずは、activity_top.xmlを開き、以下のように編集して下さい。グレーは背景の部分が削除する部分、黄色の部分がコピー＆ペーストで追加する部分になります。

res/layout/activity_top.xml

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
    tools:context=".TopActivity">

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
    android:orientation="vertical"
    >
    <TextView
        android:layout_width="fill_parent"
        android:layout_height="wrap_content"
        android:text="@string/message"/>

    <DatePicker android:id="@+id/datePicker"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_marginTop="10dp"/>

    <Button
        android:id="@+id/btn01"
        android:layout_width="fill_parent"
        android:layout_height="wrap_content"
        android:text="@string/btn_ok"
        android:layout_marginTop="10dp"/>
</LinearLayout>
//ここまで↑追加
```

ここまでを入力すると下記のような画面になります。

![](https://lh4.googleusercontent.com/-f3-BWYHzPl0/U8TpPFI_o7I/AAAAAAAAAfs/UsDLQ0iRLkw/s600/BirthdayApp4.png)

これはAndroid3.0以降のDatePickerのデフォルト画面です。
次に下記のように入力してみてください。

res/layout/activity_top.xml

```xml
<DatePicker android:id="@+id/datePicker"
    android:layout_width="wrap_content"
    android:layout_height="wrap_content"
    android:spinnersShown="false"
    android:layout_marginTop="10dp"/>
```

すると下記の画面になったと思います。

![](https://lh6.googleusercontent.com/-bxvUvPmJ4pw/U8UHst52AaI/AAAAAAAAAg8/-D_DIJp1w2o/s512/BirthdayApp12.png)

今回はカレンダーはいらないので下記のようにしてください。

res/layout/activity_top.xml

```xml
 <DatePicker android:id="@+id/datePicker"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:calendarViewShown="false"
        android:layout_marginTop="10dp"/>
```

ここまでできたら一度保存して実行してみて下さい。
以下のような画面が表示されたら成功です。

![](https://lh3.googleusercontent.com/-oziiAckDfjg/U8UIMRrIgPI/AAAAAAAAAhQ/smlaSZxfzHo/s512/BirthdayApp13.png)

### ボタンが押された時の処理を追加する

では、TopActivity.javaに(srcフォルダのcom.example.username.Birthday内)にボタンが押された時の処理を追加していきましょう。先週の授業でやったように、以下の部分を追加していきます。

app/src/java/TopActivity.java

    public class TopActivity extends Activity implements OnClickListener

するとエラーが出たと思います。ここでOnClickListenerをクリックすると下記の画面が表示されます。

![](https://lh5.googleusercontent.com/-vyuqUp5S8No/U8U8GXdKDpI/AAAAAAAAAhs/5mFKnbi60vQ/s600/BirthdayApp14.png)

ここでoptionキー＋enterキーを押すとまたさらに下記のような画面が表示されます。

![](https://lh3.googleusercontent.com/-f7bU0ykQd_8/U8U8GdlkcII/AAAAAAAAAho/5zVgGG6RNbE/s600/BirthdayApp15.png)

なので上記の画面に従って下の項目をクリックしてください。

するとインポートにOnClickListenerが追加されて新たなエラーが出てきます。これは前回の授業でも扱ったので下記のメソッドをTopActivity.javaファイルの一番下に追加してください。

app/src/java/TopActivity.java

```java
@Override
public void onClick(View v) {
    // TODO Auto-generated method stub
}
```

するとエラーがなくなりました。
次にViewの宣言と初期化をします。
以下のオレンジ背景の部分を追加して下さい。それぞれViewの宣言とViewの初期化をしています。第2講でも少し触れましたが、Viewとは画面上に配置されたパーツのことです。この、宣言と初期化をすることで、プログラム内でViewを使うことができるようになります。

app/src/java/TopActivity.java

```java
public class TopActivity extends Activity implements OnClickListener{
    //ここから↓
    private DatePicker datePicker;
    private Button okButton;
    //ここまで↑
    
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        //Viewの初期化
        //ここから↓
        datePicker = (DatePicker)findViewById(R.id.datePicker);
        okButton = (Button)findViewById(R.id.btn01);
        okButton.setOnClickListener(this);
		//ここまで↑
    }

}
```

すると再び下記のように５つエラーが出ると思います。

![](https://lh4.googleusercontent.com/-AyXDDHV3VMM/U8U-7hkM9FI/AAAAAAAAAiI/AbjKIQGCXyo/s600/BirthdayApp16.png)

エラーは5つ検出されていますが、下の図に表示されている2つを左側の赤い点線の箇所にカーソルをあわせて修正すれば、全てのエラーが消えます。ここは先程やったように下記の二つをクリックしてoptionキー＋enterキーを押せば全てのエラーがなくなります。

![](https://lh3.googleusercontent.com/-CdJNIXEB4uU/U8VAOwf-DSI/AAAAAAAAAic/9LEMD2gSh7o/s600/BirthdayApp17.png)

上記の操作により、以下の2つのファイルがインポートされていることが確認できると思います。Androidでは、新しいウィジェットを利用する際に、対応するファイルをインポートする必要があり、上記の操作を行うことで簡単にインポートを行うことができます。覚えておきましょう。

```java
import android.widget.Button;
import android.widget.DatePicker; 
```

続いて、onClick()メソッドの中に、ボタンがタップされたときの処理を記述します。今回はボタンがタップされたらToast（トースト）というものを表示させるようにします。

app/src/java/TopActivity.java#onClick()

```java
public void onClick(View v) {
    //ここから↓
    switch(v.getId()){
        case R.id.btn01:
        Toast.makeText(this, R.string.hello_world, Toast.LENGTH_LONG).show();
        break;
    }
	//ここまで↑
}
```

### Toastについて

Toastとは簡単にユーザーへ通知させる仕組みで短い文字列を表示させるのに適した仕組みです。また今回のようにボタンのタップ処理が正常に処理されているかをとりあえず確認するためによく使われたりします。

### Toastの実装方法

```
Toast.makeText(コンテキスト, 表示したいテキスト, 表示時間).show();
```

### Toastの引数

|  第一引数 | コンテクスト（アプリ全体の情報を持っているもの）this（TopActivity）を指定 |
|:--------|:--------------------------|
|  第二引数 |  表示したいテキストを指定。今回はstring.xmlに定義しているhello_worldをidにもつ文字列を指定 |
| 第三引数 | 表示時間を指定。下記の2種類のパラメータを指定可能。 Toast.LENGTH_LONG・・・表示時間を長めに設定LENGTH_SHORT・・・表示時間を短めに設定 |

Toastの部分にまた赤い点線が表示されると思いますので、先ほどと同じようにToastをクリックしてoptionキー＋returnキーで修正し、必要なファイルをインポートします。ここで一旦、保存し、アプリを実行してみましょう。

「OK」ボタンを押した時に以下のように画面下にトーストが表示されれば成功です。トーストは以下の画像下部のように、ユーザに対して文字列を短時間表示する際に利用するウィジェットです。

![](https://lh3.googleusercontent.com/-cYzZU1aXnRs/U8Vbe3QOX9I/AAAAAAAAAi0/8ff8Fpvw1QE/s512/BirthdayApp18.png)

## 結果画面の作成

### クラスの追加

次に、結果表示画面を作成します。新しいクラス、「ResultActivity.java」を作成します。「Java」を選択した状態で、右クリックを行い、「New」→「Activity」→「Blank Activity」と選択します。

![](https://lh5.googleusercontent.com/-SHE0J_MiCmM/U8TpPqx6OxI/AAAAAAAAAfc/GHSAW42EJQg/s600/BirthdayApp6.png)

すると、以下のようなクラス作成のダイアログが出現します。ここのActivity Name:の部分に、「ResultActivity」と入力し、「Finish」ボタンを押せば新しいクラスとレイアウトファイルが作成されます。

![](https://lh5.googleusercontent.com/-V9XUXspEl74/U8VdB1pEszI/AAAAAAAAAjM/iffcgkyTOZk/s600/BirthdayApp19.png)

作成されたResultActivity.javaを開き、以下の文を追加して下さい。

app/src/java/ResultActivity.java

```java
import android.app.Activity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
//ここから↓
import android.view.View;
import android.view.View.OnClickListener;
//ここまで↑
import com.example.username.birthday.R;

//ここから↓
public class ResultActivity extends Activity implements OnClickListener{
//ここまで↑
	    //省略
    }
・・・
    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        //省略
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        //省略
    }


    //ここから↓
    @Override
    public void onClick(View v) {
        switch(v.getId()){
        }
    }
    //ここまで↑
}
```

次にレイアウトファイルの編集を行います。
Activity_result.xmlに以下の記述をコピペして下記のようにしてください。

res/layout/activity_result.xml

```xml
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="fill_parent"
    android:layout_height="fill_parent"
    android:orientation="vertical" >

    <TextView
        android:id="@+id/birthday"
        android:layout_width="fill_parent"
        android:layout_height="wrap_content"
        android:layout_marginTop="10dp" />

    <TextView
        android:id="@+id/age"
        android:layout_width="fill_parent"
        android:layout_height="wrap_content"
        android:layout_marginTop="10dp" />

    <TextView
        android:id="@+id/youbi"
        android:layout_width="fill_parent"
        android:layout_height="wrap_content"
        android:layout_marginTop="10dp" />

    <TextView
        android:id="@+id/wareki"
        android:layout_width="fill_parent"
        android:layout_height="wrap_content"
        android:layout_marginTop="10dp" />

    <TextView
        android:id="@+id/eto"
        android:layout_width="fill_parent"
        android:layout_height="wrap_content"
        android:layout_marginTop="10dp" />

    <Button
        android:id="@+id/btn_mail"
        android:layout_width="fill_parent"
        android:layout_height="wrap_content"
        android:layout_marginTop="10dp"
        android:text="@string/btn_mail" />

</LinearLayout>
```

これで結果画面の作成が終わりました。

## 画面遷移の実装

### Intentによる画面遷移

さて、いよいよ画面遷移ができるように変更しましょう。TopActivity.javaを開き、以下の文を追加して下さい。
グレー背景の部分は削除する部分です。

app/src/java/TopActivity.java

```java
@Override
public void onClick(View v) { 
    switch(v.getId()){
        case R.id.btn01:
        //ここから↓
        Toast.makeText(this, R.string.hello, Toast.LENGTH_LONG).show();
        //ここまで↑削除

        //ここから↓
        Intent intent = new Intent(this,ResultActivity.class);
        startActivity(intent);
        //ここまで↑追加
        break;
     }
}
```

Intentのところでエラーが検出されると思うので、Intentをクリックしてoptionキー＋returnキーを押してください。

![](https://lh5.googleusercontent.com/-KSzAORzYq6k/U8VikaAWVHI/AAAAAAAAAjk/9208lRV-60k/s600/Birthday20.png)

ここまで終わったら実行してみましょう。「OK」ボタンを押した時に以下の画面に切り替われば成功です。

![](https://lh5.googleusercontent.com/-e4ZK3DmFeW8/U8VjZLYvoOI/AAAAAAAAAj8/jRZ17bII7r4/s512/BirthdayApp20.png)

![](https://lh6.googleusercontent.com/-M0GWDWpgxXI/U8VjZFnc-YI/AAAAAAAAAkA/MWFx9DjTm_c/s512/BirthdayApp21.png)

### Intentを使ってActivity間で情報を渡す

さて次は2つの画面の間で情報を受け渡しましょう。Androidでは、intentに情報を付与することで、異なるActivity間でデータのやりとりを行う事ができます。

1つめの画面(TopActivity)で入力された情報(誕生日)を、次の画面(ResultActivity)に渡します。
では、まずTopActivityを以下のように修正して下さい。

app/src/java/TopActivity.java

```java
@Override
public void onClick(View v) {
    // TODO Auto-generated method stub
    switch(v.getId()){
        case R.id.btn01:
    //ここから↓
            int year = datePicker.getYear();
            int month = datePicker.getMonth();
            int day = datePicker.getDayOfMonth();
    //ここまで↑
            Intent intent = new Intent(this,ResultActivity.class);
    //ここから↓
            intent.putExtra("extra_year", year);
            intent.putExtra("extra_month", month);
            intent.putExtra("extra_day", day);
    //ここまで↑
            startActivity(intent);
            break;
    }
}

```

getYear,getMonth,getDayOfMonth()はそれぞれ、datePickerから年月日を取得するメソッドです。このように取得した年月日を、Intentに付与することで、結果表示画面に渡します。Intentにデータを付与するには、putExtra()メソッドを利用します。

次に情報を受け取る画面、ResultActivityも修正します。

app/src/java/ResultActivity.java

```java
public class ResultActivity extends Activity implements OnClickListener{
    //View
	//ここから↓
    private TextView txtBirthDay;
	//ここまで↑
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_result);
	//Viewの初期化
	//ここから↓
        txtBirthDay = (TextView)findViewById(R.id.birthday);

        //前Activityからの情報(bundle)を受け取る
        Bundle bundle = getIntent().getExtras();

        if(bundle != null){
            int year = bundle.getInt("extra_year");
            int month = bundle.getInt("extra_month");
            int day = bundle.getInt("extra_day");

            txtBirthDay.setText(year + "年 " + (month + 1) + "月 " +  day + "日 うまれ");
        }
	//ここまで↑
    }
}
```

TextViewを利用するのに必要なファイルがインポートされていないので、これまでと同様にインポートしましょう。
まず最初に、Bundle bundle = getIntent().getExtras();で前の画面(Activity)からデータを受け取ります。そして、受け取ったデータから、bundle.getInt()メソッドを使って具体的な情報を取り出しています。

ここで一度保存し、実行してみましょう。
トップ画面で誕生日を入力し、「OK」ボタンを押すと、入力した誕生日が表示されていれば成功です。

![](https://lh5.googleusercontent.com/-e4ZK3DmFeW8/U8VjZLYvoOI/AAAAAAAAAj8/jRZ17bII7r4/s512/BirthdayApp20.png)

![](https://lh6.googleusercontent.com/--NTaM33OB90/U8Vlw05NpxI/AAAAAAAAAkY/FThwwbgtatk/s512/BirthdayApp22.png)

## 機能追加

### 生まれた日から年齢、干支などを算出する

ResultActivityに和暦、年齢、干支、曜日を計算する機能をつけます。まずは、西暦から和暦を計算するメソッドを作りましょう。

app/src/java/ResultActivity.java

```java
@Override
public void onClick(View v) {
    switch(v.getId()){
    }
}
//ここから↓
private static String getWareki(int year){

}
//ここまで↑
```

このメソッドの中に、プログラムを記述します。前回作ったメソッドと大きく違う点は、このメソッドが引数（ひきすう）を持つ、という点です。
このメソッドは、

```
String wareki = getWareki( 1989 );
```

のように利用します。int型の整数の形で西暦を投げると、String型の和暦が返ってきます。このように、メソッドに情報を渡すことを、メソッドに引数を渡す、といいます。

メソッドを呼び出す際に、呼び出し元からメソッド内になんらかの情報（値）を渡し、それに応じた処理を行う、ということができるのです。引数の型は、メソッド名のあとに記述します。

さらに、引数とはちょうど逆に、メソッドの呼び出し元にメソッド本体から特定の情報を渡す、ということもできます。メソッドから返される情報を、戻り値と呼びます。メソッドの戻り値の型は、メソッド名の前に記述します。

getWarekiメソッドは、整数型の引数をもち、文字列（String）型の値を戻り値として返すメソッドです。
例えば、西暦1989年は平成1年ですよね。（おおまかに言えば、ですが）つまり、西暦から1988を引くと、平成何年かがわかる、ということです。これは、以下のように記述できますので、先ほど作ったメソッドを書き換えましょう。

app/src/java/ResultActivity.java#getWareki()

```java
private static String getWareki(int year){
    //ここから↓
    int toshi = 0;
    String wareki= "";
    if( year >= 1989 ){
        toshi = year - 1988;
        wareki = "平成";
    }
    wareki = wareki + toshi + "年";
    return wareki;
    //ここまで↑
}
```

戻り値は、returnのあとに記述します。

では次に、和暦を表示させるTextViewをつくります。既にレイアウトファイルにはwarekiというidでTextViewが配置されているので、今回はResultActivity.javaのみ編集を行います。さらに、そのTextViewに先ほど作ったgetWarekiの戻り値（和暦）を表示してみましょう。

app/src/java/ResultActivity.java

```java
public class ResultActivity extends Activity implements OnClickListener{
    //View
    private TextView txtBirthDay;
	//ここから↓
    private TextView txtWareki;
	//ここまで↑
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_result);
		//Viewの初期化
        txtBirthDay = (TextView)findViewById(R.id.birthday);
		//ここから↓
        txtWareki = (TextView)findViewById(R.id.wareki);
		//ここまで↑
        //前Activityからの情報(bundle)を受け取る
        Bundle bundle = getIntent().getExtras();

        if(bundle != null){
            int year = bundle.getInt("extra_year");
            int month = bundle.getInt("extra_month");
            int day = bundle.getInt("extra_day");

            txtBirthDay.setText(year + "年 " + (month + 1) + "月 " +  day + "日 うまれ");
			//ここから↓
            String wareki = getWareki( year );
            txtWareki.setText( wareki );
			//ここまで↑
        }
    }

}
```

String wareki = getWareki( year );でgetWarekiメソッドに変数year（西暦）を引数としてわたし、String型のwarekiに返り値（和暦）を入れています。

今回は、わかりやすさを第一とし、txtWareki.setText( wareki );とわけて記述しましたが、この2行はtxtWareki.setText( getWareki( year ));のように1行で記述することが一般的です。こちらの形式に直しておきましょう。

app/src/java/ResultActivity.java

```java
//ここから↓
String wareki = getWareki( year );
txtWareki.setText( wareki );
//ここまで↑削除
//ここから↓
txtWareki.setText( getWareki( year ));
//ここまで↑追加
```

実行すると、2011年の場合には平成23年と表示されるのではないでしょうか。では、同じようにして昭和、大正、明治の条件も記述してみましょう。ちなみに、昭和は1926年から、大正は1912年から、明治は1868年からはじまっています。

### 和暦を判定する条件を作る

以下のようになります。

app/src/java/ResultActivity.java#getWareki()

```java
private static String getWareki(int year){
    int toshi = 0;
    String wareki= "";
    if( year >= 1989 ){
        toshi = year - 1988;
        wareki = "平成";
    //ここから↓
    }else if( year >= 1926 ){
        toshi = year - 1925;
        wareki = "昭和";
    }else if( year >= 1912 ){
        toshi = year - 1911;
        wareki = "大正";
    }else if( year >= 1868 ){
        toshi = year - 1867;
        wareki = "明治";
    }
    //ここまで↑
    wareki = wareki + toshi + "年";
    return wareki;
}
```

else-ifを使って記述できたでしょうか？しかし、この条件判定は正しいようで、正しくありません。例えば、平成は1989年1月8日からであり、1989年1月1日は昭和64年なのですが、現在の実装では平成元年と表示されてしまいます。

現在のgetWareki()メソッドは年の情報だけを引数として受け取っていましたが、正しく和暦判定を行うためには月や日の情報も必要なようですね。

正しく平成を判定するgetWareki()メソッドは以下のようになります。メソッドは、複数の引数を取ることも可能です。複数の引数を取るメソッドは、以下のように記述します。

app/src/java/ResultActivity.java#getWareki()

```java
//ここから↓
private static String getWareki(int year,int month,int day){
//ここまで↑
    int toshi = 0;
    String wareki= "";
    //ここから↓
    if( year >= 1989  && !(year == 1989 && month == 1 && day <= 7)){
    //ここまで↑
        toshi = year - 1988;
        wareki = "平成";
    }else if( year >= 1926 ){
        toshi = year - 1925;
        wareki = "昭和";
    }else if( year >= 1912 ){
        toshi = year - 1911;
        wareki = "大正";
    }else if( year >= 1868 ){
        toshi = year - 1867;
        wareki = "明治";
    }
    wareki = wareki + toshi + "年";
    return wareki;
}
```

year >= 1989 && !(year == 1989 && month == 1 && day <= 7)という複雑な条件になりました。これは、もし1989年以降かつ、1989年1月7日以前ではない場合、平成である、という条件です。&&はかつ、を、!は条件の逆転を表しているのでしたね。

引数の数を変更したので、getWareki()メソッドを呼び出している部分も以下のように書き換えます。month+1としているのは、datePickerで1月を選択した場合、monthに代入される値が0である、というAndroidSDKの仕様があるためです。

```
txtWareki.setText( getWareki( year  , month+1 , day));
```

では、あとの年号も同じようにしてみましょう。
1989年1月8日より　平成
1926年12月25日より　昭和
1912年7月30日より　大正
1868年1月25日より　明治　
となります。

### 正しく和暦を判定する条件を作る

app/src/java/ResultActivity.java#getWareki()

```java
private static String getWareki(int year,int month,int day){
    int toshi = 0;
    String wareki= "";
    if( year >= 1989  && !(year == 1989 && month == 1 && day <= 7)){
        toshi = year - 1988;
        wareki = "平成";
    //ここから↓
    }else if( year >= 1926 && !(year == 1926 && ((month == 12 && day <= 24) || month <= 11))){
    //ここまで↑
        toshi = year - 1925;
        wareki = "昭和";
    //ここから↓
    }else if( year >= 1912 && !(year == 1912 && ((month == 7 && day <=30) || month <=6))){
    //ここまで↑
        toshi = year - 1911;
        wareki = "大正";
    //ここから↓
    }else if( year >= 1868 && !(year == 1868 && (month == 1 && day <=25))){
    //ここまで↑
        toshi = year - 1867;
        wareki = "明治";
    }
    wareki = wareki + toshi + "年";
    return wareki;
}
```

のようになりますね。このように、複雑な複数の条件を記述する際には、よく考えてから実装しないと重大なバグが潜みやすいです。注意しましょう。

### 年齢を計算する機能(メソッド)を追加

続いて、年齢 を計算するメソッドを追加します。年齢は、どのようにすれば計算できるでしょうか？

単純に考えれば、現在の西暦年から生年月日の西暦年を引けば計算できそうです。しかし、今が2012年1月8日だとして、2001年8月10日生まれの子供の場合、どうなるでしょうか？この子供の本当の年齢は、まだ8月の誕生日を迎えていないので10歳です。しかし、単純に2012-2001をすると、この子供の年齢は11歳と判定されてしまいます。この結果、誕生月が現在の月より大きい場合には2012-2001-1というように、単純な計算から-1する必要があることがわかりました。

また、1月8日だとして、1月20日が誕生日の人の場合、この計算で大丈夫でしょうか？考えてみてください。
この場合も、先ほどと同様に年齢が1年大きく計算されてしまいます。この結果から、誕生月と現在の月が同じ場合で、かつ誕生の日にちが現在の日にちより小さい場合にも、単純な計算から-1する必要があることがわかります。

以上を考慮すると、年齢を取得するメソッドgetAge()は以下のように記述されます。getWareki()メソッドの下に、getAge()メソッドを追記します。

app/src/java/ResultActivity.java

```java
    wareki = wareki + toshi + "年";
    return wareki;
}
//ここから↓
//年齢
private static String getAge(int year, int month, int day) {
    int age;
    String ageStr;
    Calendar cal = Calendar.getInstance();
    int yeartoday = cal.get(Calendar.YEAR);
    int monthtoday = cal.get(Calendar.MONTH)+1;
    int daytoday = cal.get(Calendar.DATE);

    if( month > monthtoday ){
        age = yeartoday - year - 1;
    }else if( month == monthtoday && day > daytoday ){
        age = yeartoday - year - 1;
    }else{
        age = yeartoday-year;
    } 
    ageStr = age + "歳";
    return ageStr;
}
//ここまで↑
```

Calendarクラスを利用しているので、インポート文を追加します。

現在の年月日を取得するには、以下のようにします。

```java
Calendar cal = Calendar.getInstance();
int yeartoday = cal.get(Calendar.YEAR);
int monthtoday = cal.get(Calendar.MONTH)+1;
int daytoday = cal.get(Calendar.DATE);
```

赤い部分で+1を行なっているのは、先ほどと同様に1月の場合0が代入される為です。

### 干支を取得するメソッドの記述

続いて、干支を取得するメソッドの記述を行いましょう。今回は、年号から十二支を取得してみます。干支は、どのように計算できるでしょうか？

十二支は12種類存在し、12年周期で1周しますね。

子 丑 寅 卯 辰 巳 午 未 申 酉 戌 亥

実は十二支は、年号から4を引いて12で割った数のあまりが、以下のように対応します。

|子|丑|寅|卯|辰|巳|午|未|申|酉|戌|亥|
|--|--|--|--|--|--|--|--|--|--|--|--|
|０|１|２|３|４|５|６|７|８|９|１０|１１|

12で割った数のあまり、というのはプログラムでどのように記述するのでしょうか？
今回の計算は、以下のように記述できます。

```
int eto = (year - 4) % 12;
```

例えば、2012年は（2012 – 4)/12 = 167あまり4なので辰年、ということになります。今回は、変数etoに代入した値をもとにswitch文で分岐させ、判定を行いましょう。

app/src/java/ResultActivity.java

```java
    ageStr = age + "歳";
    return ageStr;
}
//ここから↓
//干支
private static String getEto(int year){
    String etoStr = "";
    int eto = (year - 4) % 12;
    switch( eto ){
        case 0:
            etoStr = "子";
            break;
        case 1:
            etoStr = "丑";
            break;
        case 2:
            etoStr = "寅";
            break;
        case 3:
            etoStr = "卯";
            break;
        case 4:
            etoStr = "辰";
            break;
        case 5:
            etoStr = "巳";
            break;
        case 6:
            etoStr = "午";
            break;
        case 7:
            etoStr = "未";
            break;
        case 8:
            etoStr = "申";
            break;
        case 9:
            etoStr = "酉";
            break;
        case 10:
            etoStr = "戌";
            break;
        case 11:
            etoStr = "亥";
            break;
     }
     return etoStr + "年";
}
//ここまで↑
```

本当は配列という仕組みを理解していると、短く（なんと2行ほどで）記述できるのですが、まだ説明していないので長くなってしまいました。

### 曜日を取得するメソッドの記述

最後に、年月日から曜日を逆算するメソッドを記述します。年月日から曜日を逆算するには、以下のようにします。

```java
Calendar cal = Calendar.getInstance();
cal.set(year, month, day);
int youbi = cal.get(Calendar.DAY_OF_WEEK);
```

このようにすることで、変数youbiに以下のように曜日に対応する整数が代入されます。

|日|月|火|水|木|金|土|
|--|--|--|--|--|--|--|
|１|２|３|４|５|６|７|

先ほどの十二支を取得するメソッドと同じように、switch文を用いて処理を記述しましょう。

app/src/java/ResultActivity.java

```java
    return etoStr + "年";
}
//ここから↓
//曜日
private static String getDayOfWeek(int year, int month, int day){
    Calendar cal = Calendar.getInstance();
    cal.set(year, month, day);
    int youbi = cal.get(Calendar.DAY_OF_WEEK);
    String youbiStr = "";
    switch(youbi){
        case 1:
            youbiStr = "日";
            break;
        case 2:
            youbiStr = "月";
            break;
        case 3:
            youbiStr = "火";
            break;
        case 4:
            youbiStr = "水";
            break;
        case 5:
            youbiStr = "木";
            break;
        case 6:
            youbiStr = "金";
            break;
        case 7:
            youbiStr = "土";
            break;
    }
    return youbiStr + "曜日";
}
//ここまで↑
```

### 年齢・干支・曜日を表示する

では、最後にこれらの機能(メソッド)を使い、結果を表示する部分を追加しましょう。
まずはViewの宣言と初期化です。

app/src/java/ResultActivity.java

```java
public class ResultActivity extends Activity implements OnClickListener{
    //View
    private TextView txtBirthDay;
    private TextView txtWareki;
	//ここから↓
    private TextView txtAge;
    private TextView txtYoubi;
    private TextView txtEto;
	//ここまで↑
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_result);
		//Viewの初期化
        txtBirthDay = (TextView)findViewById(R.id.birthday);
        txtWareki = (TextView)findViewById(R.id.wareki);
		//ここから↓
        txtAge = (TextView)findViewById(R.id.age);
        txtYoubi = (TextView)findViewById(R.id.youbi);
        txtEto = (TextView)findViewById(R.id.eto);
		//ここまで↑
        //前Activityからの情報(bundle)を受け取る
        Bundle bundle = getIntent().getExtras();
        :
    }
    :
}
```

次に機能(メソッド)を使い、結果を表示する部分を追加します。

app/src/java/ResultActivity.java#onCreate()

```java
Bundle bundle = getIntent().getExtras();
    if(bundle != null){
        int year = bundle.getInt("extra_year");
        int month = bundle.getInt("extra_month");
        int day = bundle.getInt("extra_day");

        txtBirthDay.setText(year + "年 " + (month + 1) + "月 " +  day + "日 うまれ");
        txtWareki.setText( getWareki( year  , month+1 , day));
        //ここから↓
        txtAge.setText(getAge(year, month + 1, day));
        txtYoubi.setText(getDayOfWeek(year, month, day));
        txtEto.setText(getEto(year));
        //ここまで↑
    }
}
```

ここまで終わったら実行してみましょう。
結果表示画面に、和暦、年齢、干支、曜日が表示されれば成功です。

![](https://lh4.googleusercontent.com/-kVYWsHrS5Bk/U8Vvw72nU-I/AAAAAAAAAkw/xeBhDHkGUME/s512/BirthdayApp23.png)

## 外部アプリケーションとの連携

結果が表示されたらこの結果をメールで送信してみましょう。メールで送信するためにはメールを送るための機能を追加しなければならない、と考えますが、androidにおいてはその必要はありません。前章で出てきたIntent(やりたいこと)を用いれば、メールを送る機能を持ったほかのアプリを呼び出して、代わりにメールを送ってもらうことが出来ます。

では、ResultActivityにある「send mail」ボタンを押したら、メールを送れるように機能を追加します。
まずは、新たに利用するクラスのインポート文を追加します。

app/src/java/ResultActivity.java

```java
import android.app.Activity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
//ここから↓
import android.widget.Button;
import android.content.Intent;
//ここまで↑
```

app/src/java/ResultActivity.java

```java
public class ResultActivity extends Activity implements OnClickListener{
    //View
    private TextView txtBirthDay;
    private TextView txtWareki;
    private TextView txtAge;
    private TextView txtYoubi;
    private TextView txtEto;
	//ここから↓
    private Button mailButton;
	//ここまで↑
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_result);
//Viewの初期化
        txtBirthDay = (TextView)findViewById(R.id.birthday);
        txtWareki = (TextView)findViewById(R.id.wareki);
        txtAge = (TextView)findViewById(R.id.age);
        txtYoubi = (TextView)findViewById(R.id.youbi);
        txtEto = (TextView)findViewById(R.id.eto);
		//ここから↓
        mailButton = (Button)findViewById(R.id.btn_mail);
        mailButton.setOnClickListener(this);
		//ここまで↑

        //前Activityからの情報(bundle)を受け取る
        Bundle bundle = getIntent().getExtras();
        :
    }
    :
}
```

これで、Viewの宣言と初期化は終わりです。Import ‘Button’を行うことを忘れないようにしましょう。次にボタンが押された時の処理を追加します。

app/src/java/ResultActivity.java

```java
//ボタンが押された時の処理
@Override
public void onClick(View v) {
    switch(v.getId()){
        //ここから↓
        case R.id.btn_mail:
            Intent intent = new Intent(Intent.ACTION_SEND);
            intent.setType("text/plain");
            intent.putExtra(Intent.EXTRA_TEXT, txtBirthDay.getText() +"\n"+ txtAge.getText() +"\n"+ txtYoubi.getText() +"\n"+ txtWareki.getText() +"\n"+ txtEto.getText());
            startActivity(intent);
            break;
        //ここまで↑
    }
}
```

追加する場所に注意して下さい。

ここまでできたら実行してみましょう。

「send mail」ボタンをクリックした時に以下のようにメーラーを選択する画面が出てきたら成功です。

![](https://lh5.googleusercontent.com/-Qhcx9Uv2iVw/U8Vy8QuKSLI/AAAAAAAAAlQ/0_H07VboXIc/s512/BirthdayApp24.png)

ここのアドレスは適当に入力しても大丈夫です。（メールアドレスとして有効なら）

![](https://lh4.googleusercontent.com/-bfjxM7YvR_4/U8Vy8X_1uaI/AAAAAAAAAlU/DACjqmu3REc/s512/BirthdayApp25.png)

![](https://lh5.googleusercontent.com/-pTJsrMnPiDY/U8Vy8ax23SI/AAAAAAAAAlY/hzr_gAP0cF0/s512/BirthdayApp26.png)

以上で機能の拡張は終わりました。今後の講義でもこういった外部アプリ(Youtube等)の連携が出てきますが、全てIntentを用いたものです。画面遷移にはIntentを用いることを前章で学びましたが、外部アプリとの連携にもIntentを用いることを覚えておいて下さい。

生まれた日を知るアプリの作成は以上で終わりとなります。このアプリを応用することで、生年月日から占いが出来るアプリや、小中高の入学年度を表示するアプリなどが作れるかと思います。各自で拡張してみてください。