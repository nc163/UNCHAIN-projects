---
title: ウォレットキャニスターを作成しよう
---
### 📦 サイクルを格納するウォレットキャニスターを作成しよう

さて、セクション2で申請をしたクーポンコードは取得できたでしょうか？

このレッスンでは、クーポンコードを使用してIC上にデプロイする`website`キャニスターのためのサイクルを用意します。

トークンはウォレットが管理するように、サイクルは**サイクルウォレット**と呼ばれるものが管理します。アプリケーションが稼働するための費用はこのサイクルウォレットから補給します。サイクルウォレットの実態はIC上で管理されるキャニスターです。

それでは、ターミナルを開いて始めていきましょう。

手順は、セクション2で紹介した[こちら](https://anv4y-qiaaa-aaaal-qaqxq-cai.ic0.app/)のステップを参考にしています。

以下のコマンドを実行して、無料サイクルがあらかじめ入った状態のウォレットキャニスターを作成します。

```
dfx canister --network=ic call fg7gi-vyaaa-aaaal-qadca-cai redeem '("YOUR_COUPON_CODE")'
```

少し待つと、ウォレットキャニスター IDが返されます。

```
(principal "CANISTER_ID")
```

以下のコマンドで、作成されたウォレットキャニスターのステータスを確認してみましょう。

```
dfx canister --network=ic status CANISTER_ID
```

約20兆サイクルが補給された状態のキャニスターであることが確認できます。

次に、作成したウォレットキャニスターを使用するためにIDを指定します。

ターミナルで以下のコマンドを実行しましょう。

```
dfx identity --network=ic set-wallet CANISTER_ID
```

このような出力が返されます。

```
Setting wallet for identity 'default' on network 'ic' to id 'CANISTER_ID'
Wallet set successfully.
```

これにより、サイクルを補充する際に呼び出されるウォレットキャニスターを指定することができました。

最後に、ウォレットキャニスターの残高を確認をしてみましょう。
以下のコマンドを実行します。

```
dfx wallet --network=ic balance
```

残高が取得できれば完了です！

```
20.099 TC (trillion cycles).
```

これでサイクルの準備が完了しました！

### 🙋‍♂️ 質問する

ここまでの作業で何かわからないことがある場合は、Discordの`#icp`で質問をしてください。

ヘルプをするときのフローが円滑になるので、エラーレポートには下記の4点を記載してください ✨

```
1. 質問が関連しているセクション番号とレッスン番号
2. 何をしようとしていたか
3. エラー文をコピー&ペースト
4. エラー画面のスクリーンショット
```

---

おめでとうございます！ セクション3は終了です！

次のセクションに進み、実際にIC上へデプロイをしてみましょう 🚀

