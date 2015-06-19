layout: post
title: "Nextraveler Cebuアプリ開発ログ"
date: 2015-04-30 22:40:58
comments: true
tags: 
- Android Studio
categories: 
- Android Studio
---

フォトフレームアプリ開発ログです。

<!-- more -->

## Android Studioインストール

→完了。ログは環境構築に反映。

## 開発開始

しょっぱなから`android.view.InflateException: Binary XML file line`のエラー発生

→ 1920 x 1080くらいの画像を`drawable-mdpi`に入れていたのが原因！
　→ `drawable-xxhdpi`に入れなおす事により改善

TODO 画面サイズ毎の画像を用意

次に、`Nullpointer exception`のエラー発生

→ Actionbarを表示するプログラムを書いていたのが原因
　→削除して改善

### TOP画面開発

コレクションビューを実装するためにAnarkitアプリのソースをダウンロード

- 大枠はFrameLayoutでいいと思う。重ねるので
- 画面全体に背景画像を設置
- タイトルとAboutラベルがかぶらないようにGridViewを配置
- GridViewを利用

サンプル

    <FrameLayout
        android:id="@+id/frame_layout"
        android:layout_width="fill_parent"
        android:layout_height="wrap_content"
        android:layout_weight="5"
        android:layout_gravity="center"
        android:layout_margin="1dip"
        android:background="#00000000"
        android:scaleType="centerInside" >
       
        <GridView
            android:id="@+id/grid_view"
            android:layout_width="fill_parent"
            android:layout_height="460dp"
            android:columnWidth="60dp"
            android:gravity="center"
            android:horizontalSpacing="5dp"
            android:numColumns="2"
            android:stretchMode="columnWidth"
            android:verticalSpacing="5dp" >
        </GridView>
    </FrameLayout>

TOP画面
FlagmentリストをViewPagerに格納
個々のFragmentにはViewPagerを入れる
個々のFragmentには動的にViewPagerのアイテムを追加できる。

new Fragment(imageSet1-6)

### 画像リストを取得する方法

http://inujirushi123.blog.fc2.com/blog-entry-45.html

ここまで自動化したいけど、ベタ書きでいいや。Flagmentのテンプレートを使って画像セット配列を渡し、viewpagerに渡す

https://gist.github.com/STAR-ZERO/4273846

## ファイル構成を整理

### Activity・Fragmentファイル

|ファイル名|説明|
|---|---|
|SplashActivity.java|スプラッシュ画面のActivity|
|MainActivity.java|トップ画面及び、各カテゴリのFragmentを読み込むActivity|
|BaseFragment.java|カテゴリ毎のViewPager表示するためのFragment|
|CustomPagerAdapter|ViewPagerの中身をセットするPagerAdapter<br>最初のページはカテゴリトップ用のlayout<br>2ページ以降はプレース詳細画面用のlayout|

### Layoutファイル

|ファイル名|説明|
|---|---|
|slpash.xml|SplashActivity.java用のレイアウトファイル|
|activity_main.xml|MainActivity.java用のレイアウトファイル|
|category_top.xml|カテゴリトップ用のレイアウトファイル|
|place_detail.xml|プレース詳細画面用のレイアウトファイル|
|base_fragment.xml|BaseFragment用のレイアウトファイル|

そうだ！下記ページを参考にすれば動的に取得できる。

http://stackoverflow.com/questions/4539630/how-do-i-check-to-see-if-a-resource-exists-in-android

    int test = mContext.getResources().getIdentifier("my_resource_name","drawable",mContext.getPackageName());
    if (test != 0) {
        imageViewList.add(mContext.getResources().getIdentifier("my_resource_name","drawable",mContext.getPackageName()););
    }

各pageViewで先頭ページで左フリックした場合はonPageScrolledで取得できそうです。

viewpagerの初期ポジションを変更できるそうなので、positionが0になった場合にflagmentを切り替える処理を実装しようと思います。

    awesomePager.setCurrentItem(CurrentPosition);

http://stackoverflow.com/questions/11879315/pageradapter-start-position

http://unsolublesugar.com/20140110/212715/

Fragmentからpositionが0になったらコールバックしてもらい、MainActivityでFragmentの切り替えを行う

http://qiita.com/__zck__/items/86c0a7ab9de4f79eacdb

## アプリ名テキスト「NEXTAVERER」の部分

各カテゴリのトップ（扉ページ）にある「NEXTAVERER」のラベル部分は画像素材を配置してください。
下記よりダウンロードできます。

<a href="https://www.dropbox.com/s/ru1g3qchdmew0cr/nextraveler.png?dl=0" target="_blank">https://www.dropbox.com/s/ru1g3qchdmew0cr/nextraveler.png?dl=0</a>

Android Studioでcsvファイルを取得

## Assetsフォルダがない！！

ないわけではない。ナビゲーションエリアの表示形式をAndroidからProjectに変えれば、app - src - mainフォルダがあるのでassetsフォルダを新規作成すればよいです。


## モーダルウィンドウの作り方

フレームレウアウトに重ねればいいだけ。

