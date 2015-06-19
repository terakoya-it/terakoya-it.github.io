layout: post
title: "テーブル関連タグ"
date: 2015-05-11 00:00:50
comments: false
tags: 
- HTML基本
categories: 
- HTML基本
---
<!-- more -->

## テーブル関連タグ一覧

次は表組みを表現するためのtable関連タグについて見ていきます。
下記のタグがありますので覚えましょう。 

|タグ|説明|
|---|---|
|`<table>`|テーブル（表）を作成する|
|`<tr>`|テーブル（表）の横方向の一行を定義する|
|`<th>`|テーブル（表）の見出しセルを作成する|
|`<td>`|テーブル（表）のデータセルを作成する|
|`<thead>`|テーブル（表）のヘッダ行を定義する|
|`<tfoot>`|テーブル（表）のフッタ行を定義する|
|`<tbody>`|テーブル（表）のボディ部分を定義する|
|`<caption>`|テーブル（表）にタイトルをつける|

### 利用例

実際の使い方はこのようになります。

    #!!{"brush":"html","gutter":"false"}
    <table border="1">
    <thead>
    <tr>
    <th>年</th><th>バージョン</th><th>説明</th>
    </tr>
    </thead>
    <tbody>
        <tr>
            <td>1993年</td>
            <td>HTML1.0</td>
            <td>正式には仕様としては存在しておらず、Internet Draftとして提示</td>
        </tr>
        <tr>
            <td>1995年</td>
            <td>HTML2.0</td>
            <td>RFC1866IETE</td>
        </tr>
    </tbody>
    </table>

ブラウザで確認すると下記のように表示されます。

![](https://lh3.googleusercontent.com/-5oWyhbG5hdU/U4hmnBNKXaI/AAAAAAAAAz4/iYvsRkNPFfM/s600/%25E3%2582%25B9%25E3%2582%25AF%25E3%2583%25AA%25E3%2583%25BC%25E3%2583%25B3%25E3%2582%25B7%25E3%2583%25A7%25E3%2583%2583%25E3%2583%2588%25202014-05-30%252020.04.20.png)

### 作ってみよう

1. Sublime Textで`⌘ + option + n`
2. `table-tag.html`を入力してファイルを作成

**table-tag.html**

    #!!{"brush":"html","title":"table-tag.html"}
    <!DOCTYPE html>
    <html lang="ja">
    <head>
    <meta charset="UTF-8">
    <title>HTMLテーブル要素</title>
    </head>
    <body>
        <table border="1">
            <tr>
            <th>年</th><th>バージョン</th><th>説明</th>
            </tr>
            <tr>
                <td>1993年</td>
                <td>HTML1.0</td>
                <td>正式には仕様としては存在しておらず、Internet Draftとして提示</td>
            </tr>
            <tr>
                <td>1995年</td>
                <td>HTML2.0</td>
                <td>RFC1866IETE</td>
            </tr>
        </table>
    </body>
    </html>

### 確認しよう

Sublime Textで`ctrl + option + c`をタイプしてブラウザで確認しましょう。

- 画面にテーブルが表示されている事を確認しよう

## テーブルのセル結合について

テーブル要素で複数のセルを結合させたい場合には`colspan`、`rowspan`の属性をつけて表現します。

|属性名|説明|
|---|---|
|colspan|横方向にセルを結合|
|rowspan|縦方向にセルを結合|

### colspan属性

`横方向の結合`を表現できる属性値です。
属性値の数値により何個のセルを横方向に結合させるかを指定します。

### 作ってみよう

1. Sublime Textで`⌘ + option + n`
2. `table-colspan.html`を入力してファイルを作成

**table-colspan.html**

    #!!{"brush":"html","title":"table-colspan.html"}
    <!DOCTYPE html>
    <html lang="ja">
    <head>
    <meta charset="UTF-8">
    <title>HTMLテーブル　セルの結合（横方向）</title>
    </head>
    <table border="1">
    <tr>
    <td colspan="3">セルの結合</td>
    </tr>
    <tr>
    <td>セル</td>
    <td>セル</td>
    <td>セル</td>
    </tr>
    </table>

#### 表示結果

![](https://lh4.googleusercontent.com/-0ksoaAzzidQ/VGxZdVDdc6I/AAAAAAAAFaU/4iewxcaH8Q0/w1348-h336-no/html_table_colspan.png)

### rowspan属性

`縦方向の結合`を表現できる属性値です。
属性値の数値により何個のセルを縦方向に結合させるかを指定します。

### 作ってみよう

1. Sublime Textで`⌘ + option + n`
2. `table-rowspan.html`を入力してファイルを作成

**table-rowspan.html**

    #!!{"brush":"html","title":"table-rowspan.html"}
    <!DOCTYPE html>
    <html lang="ja">
    <head>
    <meta charset="UTF-8">
    <title>HTMLテーブル　セルの結合（横方向）</title>
    <table border="1">
        <tr>
            <td rowspan="3">セルの結合</td>
            <td>セル</td>
            <td>セル</td>
        </tr>
        <tr>
            <td>セル</td>
            <td>セル</td>
        </tr>
        <tr>
            <td>セル</td>
            <td>セル</td>
        </tr>
    </table>

#### 表示結果

![](https://lh5.googleusercontent.com/-xDzfZbb_hGc/VGxZ7q1qoXI/AAAAAAAAFac/CSUSlvl34Uw/w812-h916-no/html-table-rowspan.png)
