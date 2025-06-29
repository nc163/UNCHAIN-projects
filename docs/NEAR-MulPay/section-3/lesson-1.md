---
title: 送金機能を確認しよう
---
### 🚀 送金機能を確認しよう

これまでのLessonで送金dappは完成しました！

そこで本レッスンではswap機能が機能していることを確認しましょう！

まず受け取る用のウォレットで接続して今のトークン残高を確認しましょう。

ここまでのテキストと同じようにしていたなら下のように残高は全て0でしょう。

![](/images/NEAR-MulPay/section-3/3_1_1.png)

ではwallet画面からDisconnectボタンを押して、送金用のウォレットと接続しましょう。

次にwallet画面から送金に使うトークンを獲得しましょう。そして送金画面へ移動して、送金先のアドレスを（1）の部分に入力しましょう。

実機の方はmetamaskでQRコードを出して、それをカメラでスキャンしてアドレスを取得してみてもいいでしょう！ ただ、この方法だと最初の部分に`ethereum: `という文字列が入るのでそれは消しましょう。

そして先ほど獲得したトークンを選択して、送金したい量を入力しましょう。

最後に送金先で受け取りたいトークンを選択して`Transfer`ボタンを押して送金しましょう。

するとmetamaskへ移動して、２回許可のボタン押しましょう。１回目の許可はコントラクトが接続しているウォレットのトークンを操作できるためのもので、２回目の許可はトランザクションを起こすためのガス代の消費のためのものです。

下のような画面になるでしょう。
![](/images/NEAR-MulPay/section-3/3_1_2.png)

[`送金側のホーム画面`]
![](/images/NEAR-MulPay/section-3/3_1_3.png)

[`受け取り側のホーム画面`]
![](/images/NEAR-MulPay/section-3/3_1_4.png)

これでswap機能を搭載した送金機能の動作確認ができましたね！

### 🙋‍♂️ 質問する

ここまでの作業で何かわからないことがある場合は、Discordの`#near`で質問をしてください。

ヘルプをするときのフローが円滑になるので、エラーレポートには下記の4点を記載してください ✨

```
1. 質問が関連しているセクション番号とレッスン番号
2. 何をしようとしていたか
3. エラー文をコピー&ペースト
4. エラー画面のスクリーンショット
```

---

section-3 lesson1の完了おめでとうございます 🎉

ここまででアプリの完成・動作テストはできたので、次のレッスンではプロジェクト完了を示すための作業を行います！

