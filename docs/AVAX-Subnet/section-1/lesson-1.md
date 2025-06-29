---
title: Subnetを理解しよう
---
### 🌵 Subnet とは

Subnetは独自のルールを定義することができるブロックチェーンネットワークです。

Avalancheには3つのビルトインブロックチェーン（P-Chain、C-Chain、X-Chain）があり、プライマリネットネットワークと呼ばれます。
このビルトインブロックチェーンに加え、Subnetによるブロックチェーンをいくつも増やしていくことができます。

![](/images/AVAX-Subnet/section-1/1_1_2.png)
[Subnet Overview](https://docs.avax.network/subnets)より引用

ブロックチェーンの作成には最低1台のバリデータとなるコンピュータとVMが必要になります。
Avalanche上のいずれかのネットワークのバリデータになるには、プライマリネットワークのバリデータであることが求められます。
プライマリネットワークのバリデータは200AVAXをステーキングする必要があります。

今回はローカルネットワークで動かすのみなので、バリデータは自動で用意されますしAVAXのステーキングは必要ありません。
VMはEVMのテンプレートを使用します。

各Subnetは独立しているため、独自の実行ロジック・手数料体系・セキュリティなどを提供します。

各Subnetは実行スレッドやネットワークを共有しないため、トラフィックの集中による遅延を抑えることができ、さらに高パフォーマンスのアバランチコンセンサスを利用することができます。

💻 VMとは

VM（仮想マシン）は、ブロックチェーンのアプリケーションレベルのロジックを定義しています。

VMは、ブロックチェーンの状態やトランザクションの管理、ユーザがブロックチェーンと対話するためのAPIの指定などの役割を担っています。

ブロックチェーンはVMのインスタンスです。
Avalancheでは、各Subnetは複数のブロックチェーン（つまり複数のVM）を含むことができます。

🚀 Subnetのできること

- 独自のネイティブトークンとそれによる手数料体系を利用した独自のトークンエコノミクスを作成できる

- 「バリデーターは特定の国に居住している必要がある」などの独自の規則を設けることができる。

- 「バリデータが一定のスペックを持ったハードウェア要件を満たす必要がある」などのアプリ仕様に関する要求を設けることができる。

- 特定のバリデータのみ情報が見えるようにするプライベートブロックチェーンの作成ができる。

- バリデータは自分が関心のあるブロックチェーンにのみ検証を行うことができるので、バリデータの負担を軽減することができる。

📓 独自ブロックチェーンのデメリット

- コンポーサビリティ
  独自ブロックチェーン上のコントラクトが、C-Chain上のより大きな流動性プールと資産を交換する時は同じC-Chain上にコントラクトがあった方がより効率的。
  Subnetの場合はブリッジ処理が必要（今後Subnet間通信のサポートにより簡素化される可能性あり 🔥）。

- オペレーションコスト
  C-Chainは何千ものノードによって運営され、高度に分散化され、信頼性が高く、すべてのインフラ（エクスプローラ・インデクサ・エクスチェンジ・ブリッジ）は追加料金なしで専門サポートチームによってすでに構築されています。
  自分でSubnetの運営をする場合、それらを自分で行う必要があります。

以上がSubnetの特徴をまとめたものになります。
その他詳しくは[こちら](https://docs.avax.network/subnets)をご覧ください 💁

### 🙋‍♂️ 質問する

ここまでの作業で何かわからないことがある場合は、`Discord`の`#avalanche`で質問をしてください。

ヘルプをするときのフローが円滑になるので、エラーレポートには下記の三点を記載してください ✨

```
1. 質問が関連しているセクション番号とレッスン番号
2. 何をしようとしていたか
3. エラー文をコピー&ペースト
4. エラー画面のスクリーンショット
```

---

次のレッスンでSubnetを作成します 🎉

