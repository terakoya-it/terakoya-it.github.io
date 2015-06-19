layout: post
title: "テキスト関連タグ"
date: 2015-05-11 00:00:51
comments: false
tags: 
- HTML基本
categories: 
- HTML基本
---
<!-- more -->

テキスト関連のHTMLタグについて紹介します。

## テキスト関連のタグ

|タグ|説明|
|---|---|
|`<font>`|フォントの種類・大きさ・色を指定する|
|`<basefont>`|テキストの基準サイズ・基準色・基準フォントを指定する|
|`<b>`|テキストを太字にする|
|`<em>`|強調する|
|`<strong>`|強調する|
|`<i>`|テキストを斜体（イタリック）にする|
|`<u>`|テキストに下線（アンダーライン）を引く|
|`<s>`|打ち消し線を引く|
|`<sub>`|下付き文字を表示する|
|`<sup>`|上付き文字を表示する|
|`<ruby>`|ルビの範囲を指定する|
|`<bdo>`|文字表記の方向を指定する|
|`<br>`|改行する|
|`<strong>`|強調する|

## 改行（brタグ）

brタグは`(改行)`を表します。brタグは`(「break」)`という単語の略です。
通常は下記のようにpタグなどの文章を記述している間にいれて改行させるときに使います。

    #!!{"brush":"html","gutter":"false"}
    <p>HTMLの基本を学習し、<br />使いこなせるようにする講義</p>

brタグはひとつのタグで意味を表しますので下記のように記述します。

    #!!{"brush":"html","gutter":"false"}
    <br />

※<br\>でも正常に改行されます。

![](https://lh5.googleusercontent.com/-CUmo7iWKGLI/U4fv1DN1QbI/AAAAAAAAAyI/Ftj2nalVMek/s512/%25E3%2582%25B9%25E3%2582%25AF%25E3%2583%25AA%25E3%2583%25BC%25E3%2583%25B3%25E3%2582%25B7%25E3%2583%25A7%25E3%2583%2583%25E3%2583%2588%25202014-05-30%252011.40.49.png)

### 作ってみよう

1. Sublime Textで`⌘ + option + n`
2. `br-tag.html`を入力してファイルを作成

**br-tag.html**

    #!!{"brush":"html","title":"br-tag.html"}
    <!DOCTYPE html>
    <html lang="ja">
    <head>
    <meta charset="UTF-8">
    <title>brタグの確認</title>
    </head>
    <body>
    <p>HTMLの基本を学習し、<br>使いこなせるようにする講義</p>
    </body>
    </html>

### 確認しよう

Sublime Textで`ctrl + option + c`をタイプしてブラウザで確認しましょう。

- 画面に段落文字の間に改行がされている事を確認しよう

## 強調（em、strongタグ）

em、strongタグを利用することにより囲まれた箇所が強調している事を表現しています。
※Google検索ではこの強調された箇所を文書内での重要なキーワードという認識をします。

|タグ|HTML5 の定義
|---|---|
|`<em>`|強調を表現（Emphasisの略）<br>文章の意味合いとして強調すべき語句やフレーズ|
|`<strong>`|より強い重要性を表現<br>文中の特定の語句が重要であること|

### 作ってみよう

1. Sublime Textで`⌘ + option + n`
2. `em-strong-tag.html`を入力してファイルを作成

**em-strong-tag.html**

    #!!{"brush":"html","title":"em-strong-tag.html"}
    <!DOCTYPE html>
    <html lang="ja">
    <head>
    <meta charset="UTF-8">
    <title>brタグの確認</title>
    </head>
    <body>
    <h2>emタグを使った強調</h2>
    <p>今求められているものは<em>フルスタック</em>な能力です。</p>
    <h2>strongタグを使った強調</h2>
    <p>魏・呉・蜀の三国が覇権を争った三国時代のことを叙述した歴史書を<strong>三国志</strong>という。</p>
    </body>
    </html>

### 確認しよう

Sublime Textで`ctrl + option + c`をタイプしてブラウザで確認しましょう。

- 「フルスタック」の文章が斜体になっている事を確認しよう。
- 「三国志」の文章が太字になっている事を確認しよう。

## 太字・斜体（b、iタグ）

b、iタグを使って太字や斜体にし、たのテキストとは **区別すべき箇所** を表現することができます。

|タグ|HTML5 の定義
|---|---|
|`<b>`|文書内のキーワードや製品名など、他と区別したいテキストを表します。<br>強調の意味はありません。 |
|`<i>`|声や心の中で思ったことなど、他と区別したいテキストを表します。|

### 作ってみよう

1. Sublime Textで`⌘ + option + n`
2. `b-i-tag.html`を入力してファイルを作成

**b-i-tag.html**

    #!!{"brush":"html","title":"del-tag.html"}
    <!DOCTYPE html>
    <html lang="ja">
    <head>
    <meta charset="UTF-8">
    <title>太字・斜体（b、i）タグ</title>
    </head>
    <body>
    <h2>強調</h2>
    <p>表示価格は<b>税込み価格</b>です。</p>
    <h2>斜体</h2>
    <p>安倍首相は今年４月の消費税率引き上げに触れ、<i>今後、法律に従って判断する</i>と述べるにとどめた。</p>
    </body>
    </html>

### 確認しよう

Sublime Textで`ctrl + option + c`をタイプしてブラウザで確認しましょう。

- 「税込み価格」の文章が太字になっている事を確認しよう。
- 「今後、法律に従って判断する」の文章が斜体になっている事を確認しよう。

## 取り消し（delタグ）

`<del>`タグを使うことにより対象部分が削除された、取り消しになったことを示します。

    #!!{"brush":"html","gutter":"false"}
    <p><del>HTML5は策定中です。</del>2014年10月W3Cより勧告されました。</p>

### 作ってみよう

1. Sublime Textで`⌘ + option + n`
2. `del-tag.html`を入力してファイルを作成

**del-tag.html**

    #!!{"brush":"html","title":"del-tag.html"}
    <!DOCTYPE html>
    <html lang="ja">
    <head>
    <meta charset="UTF-8">
    <title>取り消し（del）タグ</title>
    </head>
    <body>
    <p><del>HTML5は策定中です。</del>2014年10月W3Cより勧告されました。</p>
    </body>
    </html>

### 確認しよう

Sublime Textで`ctrl + option + c`をタイプしてブラウザで確認しましょう。

- 「HTML5は策定中です。」の文章に取り消し線がついている事を確認しよう。

## 引用・転載

HTMLの文章で`引用`や`転載`を表現したい場合には`blockquate`タグや`cite`タグを使います。
※マナーとして著作物を引用する場合には必ず著作者に確認した上で引用先を明示するようにしましょう。

|タグ名|説明|
|---|---|
|`<blockquote>`|他の情報源からの引用・転載箇所である事を表現|
|`<q>`|他の情報源からの引用・転載箇所である事を表現（一行以内の短い文用）|
|`<cite>`|出典・参照先を表現（Citationの略）|

### 作ってみよう

1. Sublime Textで`⌘ + option + n`
2. `quote-tag.html`を入力してファイルを作成

**quote-tag.html**

    #!!{"brush":"html","title":"quote-tag.html"}
    <!DOCTYPE html>
    <html lang="ja">
    <head>
    <meta charset="UTF-8">
    <title>取り消し（del）タグ</title> 
    <blockquote>
    あなたの時間は限られている。
    だから他人の人生を生きたりして
    無駄に過ごしてはいけない。
    ドグマ（教義、常識、既存の理論）にとらわれるな。
    それは他人の考えた結果で生きていることなのだから。
    他人の意見が雑音のようにあなたの内面の声を
    かき消したりすることのないようにしなさい。
    そして最も重要なのは、自分の心と直感を信じる勇気を持ちなさい。
    </blockquote>
    <cite>スティーブ・ジョブス</cite>
    </body>
    </html>

#### 確認しよう

下記のように表示されればOKです。

![](https://lh6.googleusercontent.com/-uzmBylPmkzU/VHSBgkMOsKI/AAAAAAAAFh0/cLz4S4UW6Zs/w1494-h574-no/html-blockquote-cite.png)

## プログラムコードの表示

プログラムコードをHTML文書に表現したい場合には下記のタグを利用します。

|タグ名|説明|
|---|---|
|`<pre>`|プログラムのソースコードである事を表現（ブロック要素）|
|`<code>`|プログラムのソースコードである事を表現（インライン要素）|

※昔は上記以外に`<plaintext>`や`<xmp>`のタグでもプログラムコードを表現していましたがHTML5では廃止されています。

`<pre><code>〜</code></pre>`で囲んで使われるのが一般的です。

    #!!{"brush":"html","gutter":"false"}
    <pre>
    <code>
    $(function(){
        window.alert();
    });
    </code>
    </pre>

また、インライン（文章の一部分）で、短いコードを表現する場合は下記のようにcodeタグで囲って表現します。

    #!!{"brush":"html","gutter":"false"}
    <p>1行目の<code>viewDidLoad()</code>の中で初期化の処理を記述しています。</p>

また、HTMLコードを表示する場合は`<`や`>`の記号を`&lt;`や`&gt;`の実態参照文字に変換する必要がある事に注意しましょう。

    #!!{"brush":"html","gutter":"false"}
    <pre>
    <code>
    &lt;p&gt;
    HTMLコードを表示するためにはタグ部分を実態参照文字にする必要があります。
    &lt;/p&gt;
    </code>
    </pre>

### 作ってみよう

1. Sublime Textで`⌘ + option + n`
2. `code-tag.html`を入力してファイルを作成

**code-tag.html**

    #!!{"brush":"html","gutter":"false"}
    <!DOCTYPE html>
    <html lang="ja">
    <head>
        <meta charset="UTF-8">
        <title>プログラムコードの表示</title>
    </head>
    <body>
    <h2>HTML以外のプログラムコード</h2>
    <pre>
    <code>
    $(function(){
        window.alert("こんにちは！");
    });
    </code>
    </pre>
    <h2>HTMLコード</h2>
    <pre>
    <code>
    &lt;p&gt;
    HTMLコードを表示するためにはタグ部分を実態参照文字にする必要があります。
    &lt;/p&gt;
    </code>
    </pre>
    </body>
    </html>

#### 確認しよう

下記のようにプログラムコードが表示されていることを確認しよう。

![](https://lh4.googleusercontent.com/-lwW5hCCtHNk/VHSH36wVSkI/AAAAAAAAFiE/AnVX4rE5d0s/w1288-h872-no/html-code.png)
