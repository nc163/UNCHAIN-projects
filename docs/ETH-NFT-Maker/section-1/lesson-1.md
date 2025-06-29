---
title: NFTとは
---
### 🎟 NFT とは？

NFTは「Non-Fungible Token（＝非代替性トークン）」の略であり、ある「データ」へのリンクの所有権という暗号資産（＝トークン）のことを指します。

ブロックチェーンの技術を用いれば、デジタルアート作品、ビデオ、画像など、デジタル上に存在するすべてのデータをNFTとして扱うことが可能です。

NFTの特徴は、主に下記の3つがあげられます。

- 唯一性を証明できる
- 改ざんできない
- データの作成者／所有者を記録できる

データ管理に用いられるブロックチェーン技術は、それぞれの「トークン」に固有の識別子を付与し、所有者が保有するトークンが一点物であることを証明します。

### 🪄 NFTの仕組みをざっくりとみる

NFTは、NFTをmintする機能を持ったスマートコントラクトによりmintされます。
スマートコントラクトはそれぞれが固有のコントラクトアドレスを持っており、同じコントラクトアドレスは２つとして存在しません。
このスマートコントラクトの中で、一番のNFTは、このユーザーのものというふうに管理します。

1. mint関数がNFTの所有者のウォレットアドレスと識別子（ex 0,1,2）を結びつけます。
2. この識別子の数字と写真などが含まれるメタデータが保存されている配列の番号を同じにする。
3. `tokenURI`関数の引数にNFTの識別子が入ると、json形式でメタデータを返してくれるようにする。

上記の３つができていると、openseaなどでみれるNFTをmintするスマートコントラクトをつくることができます。

今ここに書いてあることがわからなくても、開発を進めていけばわかるので大丈夫です!
開発でもし迷子になったと思ったら、ここに戻って基礎を思い出してください!

