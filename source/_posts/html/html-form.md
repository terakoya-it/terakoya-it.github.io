layout: post
title: "フォーム関連タグ"
date: 2015-05-11 00:00:49
comments: false
tags: 
- HTML基本
categories: 
- HTML基本
---
<!-- more -->

プラウザ画面からユーザに何かしらのデータを入力してもらうための要素です。
Javascriptにデータを送って様々な処理を動かしたり、PHPやRubyなどのサーバ側のプログラムにデータを送るときに利用します。

**Webアプリケーションを作る上ではこのフォーム要素の詳しい理解が必要になります。しっかり学習しましょう。**

## フォーム要素の使い方

`<form>`タグの中に`input`や`select`、`textarea`などの入力項目を指定するタグを入れます。
`input type="submit"`のタグの要素をユーザがクリックすることにより`form`タグの`action`属性に指定したURLのプログラムに送信することができます。
※送信する側はPHPやRuby、Node.jsなどのプログラムが受け取ることができます。

~~~.brush:html
<form action="/form-test/" method="post">
<legend>テキスト（type="text"）</legend>
<label>プレースホルダー有</label>
<input type="text" name="text1" placeholder="テキスト">
<label>初期値有</label>
<input type="text" name="text2" value="テキスト">
<input type="submit" value="送信">
</form>
~~~

### formタグの属性値について

formタグでは下記の属性を指定する必要があります。

|属性名|説明|
|---|---|
|action|入力データを送信先を絶対パスまたは相対パスで指定　|
|method|入力データを送信送信する方法を指定。`get`または`post`を指定します。<br>通常は`post`を指定してください|

## フォーム要素一覧

|タグ|説明|
|---|---|
|`<form>`|入力・送信フォームを作成する<br>入力項目をこのformタグの中に記述|
|`<input type="text">`|一行テキストボックスを作成する|
|`<input type="password">`|パスワード入力欄を作成する|
|`<input type="radio">`|ラジオボタンを作成する|
|`<input type="checkbox">`|チェックボックスを作成する|
|`<input type="hidden">`|非表示データを送信する|
|`<input type="file">`|サーバーにファイルを送信する|
|`<input type="submit">`|フォームの送信ボタン・リセットボタンを作成する|
|`<input type="image">`|フォームの画像ボタンを作成する|
|`<input type="button">`|フォームの汎用ボタンを作成する|
|`<button>〜</button>`|ボタンを作成する|
|`<select>`|セレクトボックス|
|`<option>`|セレクトボックスの選択肢を指定|
|`<textarea>`|複数行の入力フィールドを作成|
|`<legend>`|フォームの入力項目グループタイトル|
|`<label>`|フォーム部品と項目名（ラベル）を関連付ける|


## 利用サンプル

### テキスト入力

プレースホルダーを入れたい場合にはinputタグに`placeholder`を、初期値を入れたい場合には`value`属性に値をセットします。

~~~.brush:html
<form action="/form-test/" method="post">
<legend>テキスト（type="text"）</legend>
<label>プレースホルダー有</label>
<input type="text" name="text1" placeholder="テキスト">
<label>初期値有</label>
<input type="text" name="text2" value="テキスト">
<input type="submit" value="送信">
</form>
~~~


<div class="panel panel-default">
<div class="panel-body">
<form action="https://terakoya-web.com/form-test/" method="post" target="_blank">
<legend>テキスト（type="text"）</legend>
<label>プレースホルダー有</label>
<input type="text" name="text1" placeholder="テキスト">
<label>初期値有</label>
<input type="text" name="text2" value="テキスト">
<input type="submit" value="送信">
</form>
</div>
</div>

### パスワード入力

パスワード入力は入力された文字がマスクされます。

~~~.brush:html
<form action="/form-test/" method="post">
<legend>パスワード（type="password"）</legend>
<input type="password" name="password">
<input type="submit" value="送信">
</form>
~~~

<div class="panel panel-default">
<div class="panel-body">
<form action="https://terakoya-web.com/form-test/" method="post" target="_blank">
<label>パスワード（type="password"）<br>
<input type="password" name="password"></label><input type="submit" value="送信">
</form>
</div>
</div>

### 非表示入力項目

inputタグのtype属性を`hidden`にする事により画面上には表示しない送信データを定義する事ができます。
JavascriptやPHPなどのプログラムを動かす上で必要なデータでユーザに見せる必要がない、または入力させる必要がないデータをこの項目で定義します。

~~~.brush:html
<form action="/form-test/" method="post">
<legend>非表示入力項目</legend>
<input type="hidden" name="user_id" value="taro">
<input type="hidden" name="token" value="$FGAFADG#D">
<input type="submit" value="送信">
</form>
~~~

<div class="panel panel-default">
<div class="panel-body">
<form action="https://terakoya-web.com/form-test/" method="post" target="_blank">
<legend>非表示入力項目</legend>
<input type="hidden" name="user_id" value="taro">
<input type="hidden" name="token" value="$FGAFADG#D">
<input type="submit" value="送信">
</form>
</div>
</div>


### ラジオボタン入力

ラジオボタンは複数の`選択肢からどれか一つを選択`する入力項目です。
ラジオボタンの場合、`label`タグで囲むことにより、ラベル要素をクリックしても選択されるようになります。

~~~.brush:html
<form action="/form-test/" method="post">
<legend>ラジオボタン（type="radio"）</legend>
<label><input type="radio" name="sex" value="male"> 男性</label>
<label><input type="radio" name="sex" value="female"> 女性</label>
<input type="submit" value="送信">
</form>
~~~

<div class="panel panel-default">
<div class="panel-body">
<form action="https://terakoya-web.com/form-test/" method="post" target="_blank">
<legend>ラジオボタン（type="radio"）</legend>
<label><input type="radio" name="sex" value="male"> 男性</label>
<label><input type="radio" name="sex" value="female"> 女性</label>
<input type="submit" value="送信">
</form>
</div>
</div>

### チェックボックス入力

チェックボックスは複数の`選択肢からどれか一つ以上を選択`する入力項目です。（複数選択可）
チェックボックスも、`label`タグで囲むことにより、ラベル要素をクリックしても選択されるようになります。

~~~.brush:html
<form action="/form-test/" method="post">
<label><input type="checkbox" name="favorite[]" value="apple"> リンゴ
</label>
<label><input type="checkbox" name="favorite[]" value="banana"> バナナ
</label>
<label><input type="checkbox" name="favorite[]" value="orange"> オレンジ
</label>
<input type="submit" value="送信">
</form>
~~~

<div class="panel panel-default">
<div class="panel-body">
<legend>チェックボックス（type="checkbox"）</legend>
<form action="https://terakoya-web.com/form-test/" method="post" target="_blank">
<label><input type="checkbox" name="favorite[]" value="apple"> リンゴ
</label>
<label><input type="checkbox" name="favorite[]" value="banana"> バナナ
</label>
<label><input type="checkbox" name="favorite[]" value="orange"> オレンジ
</label>
<input type="submit" value="送信">
</form>
</div>
</div>


### セレクトメニュー（プルダウンメニュー）

セレクトメニュー（プルダウンメニューともいいます）はメニューから単一または複数項目を選択させる入力項目です。
- `select`タグで大枠を囲い、その中に`option`タグで選択項目を定義します。
- `size`属性を指定する事によりメニューの縦幅が変更します。
- `multiple`属性を追加すると複数項目を選択（※）できます。
※複数項目選択する場合にはMacならCommandキーを押しながら選択、WindowsならControlキーを押しながら選択します。

~~~.brush:html
<form action="/form-test/" method="post">
<legend>セレクトメニュー（プルダウンメニュー）</legend>
<label for="select-one">単一項目選択</label>
<select name="select-one">
<option value="A">A型</option>
<option value="B">B型</option>
<option value="O">O型</option>
<option value="AB">AB型</option>
</select>

<label for="select-multi">複数項目選択</label>
<select name="select-multi[]" size="3" multiple>
<option value="book">読書</option>
<option value="sport">スポーツ</option>
<option value="trip">旅行</option>
<option value="art">アート</option>
</select>
<input type="submit" value="送信">
</form>
~~~


<div class="panel panel-default">
<div class="panel-body">
<legend>チェックボックス</legend>
<form action="https://terakoya-web.com/form-test/" method="post" target="_blank">
<legend>セレクトメニュー（プルダウンメニュー）</legend>
<label for="select-one">単一項目選択</label>
<select name="select-one">
<option value="A">A型</option>
<option value="B">B型</option>
<option value="O">O型</option>
<option value="AB">AB型</option>
</select>

<label for="select-multi">複数項目選択</label>
<select name="select-multi[]" size="3" multiple>
<option value="book">読書</option>
<option value="sport">スポーツ</option>
<option value="trip">旅行</option>
<option value="art">アート</option>
</select>
<input type="submit" value="送信">
</form>
</div>
</div>

### ファイルアップロード

画像やPDFなどのファイルを送信したい場合に利用します。
この属性をもつformタグには`enctype="multipart/form-data"`を追加する必要があります。

~~~.brush:html
<form action="/form-test/" method="post" enctype="multipart/form-data">
<legend>ファイルアップロード（type="checkbox"）</legend>
<input type="file" name="upload">
<input type="submit" value="送信">
</form>
~~~

<div class="panel panel-default">
<div class="panel-body">
<form action="https://terakoya-web.com/form-test/" method="post" target="_blank" enctype="multipart/form-data">
<legend>ファイルアップロード（type="file"）</legend>
<input type="file" name="upload">
<input type="submit" value="送信">
</form>
</div>
</div>

### テキストエリア（複数行のテキスト入力）

複数行のテキスト入力させたい場合には`textarea`タグを使います。他の入力項目とは違い`textarea`タグで囲んだ値が初期値になります。

~~~.brush:html
<form action="/form-test/" method="post">
<legend>複数行のテキスト入力</legend>
<textarea name="question" cols=40 rows=4>
質問内容を入力してください。
</textarea>
<input type="submit" value="送信">
</form>
~~~

<div class="panel panel-default">
<div class="panel-body">
<form action="https://terakoya-web.com/form-test/" method="post" target="_blank">
<legend>複数行のテキスト入力</legend>
<textarea name="question" cols=40 rows=4>
質問内容を入力してください。
</textarea>
<input type="submit" value="送信">
</form>
</div>
</div>

### 汎用ボタン

`button`タグを利用することにより汎用的なボタンを作成できます。
`<input type="submit">`で表現するボタンはクリックするとform内の入力データがサーバに送信する処理が発動しますが、このbuttonはデフォルトではサーバに送信する処理は発動しません。
**Javascriptなどを実行するきっかけとして利用します。**

~~~.brush:html
<!-- クリックしても何も反応なし -->
<button type="button">汎用ボタン</button>
<!-- クリックしても何も反応なし -->
<button onclick="alert('ボタンクリック')">JS呼び出しボタン</button>
~~~

<div class="panel panel-default">
<div class="panel-body">
<!-- クリックしても何も反応なし -->
<button type="button">汎用ボタン</button>
<!-- クリックしても何も反応なし -->
<button onclick="alert('ボタンクリック')">JS呼び出しボタン</button>
</div>
</div>

### リセットボタン

フォームに入力された内容をクリアするリセットボタンを実装する場合にはinputタグのtype属性値をresetにすれば実装できます。

~~~.brush:html
<form action="/form-test/" method="post">
<legend>テキスト（type="text"）</legend>
<label>プレースホルダー有</label>
<input type="text" name="text1" placeholder="テキスト">
<input type="reset" value="リセット">
</form>
~~~

<div class="panel panel-default">
<div class="panel-body">
<form action="https://terakoya-web.com/form-test/" method="post" target="_blank">
<legend>テキスト（type="text"）</legend>
<label>プレースホルダー有</label>
<input type="text" name="text1" placeholder="テキスト">
<input type="reset" value="リセット">
</form>
</div>
</div>

## 作ってみよう

1. Sublime Textで`⌘ + option + n`
2. `form-tags.html`を入力してフォルダ・ファイルを作成
3. 上記のform要素の利用サンプルのなかから5つの入力項目を選んでフォーム画面を作成してください。
4. formタグのactionは`https://terakoya-web.com/form-test/`にしてください

### 確認しよう

実際にサーバ側にデータが送られるか確認しよう。
