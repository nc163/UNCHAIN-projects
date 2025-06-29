---
title: デプロイヤーアカウントの作成
---
## デプロイヤーアカウント

### ⛵ テストネットへのデプロイ

次に、スマートコントラクトをテストネットにデプロイしたいと思います！ このワークショップが作成された時点では、The Graphは多くのテストネットをサポートしていますが、この例ではsepoliaを使用します。

## テストネット用の資金が必要な場合は、以下のフォーセットを試してみてください：

[Ethereum Sepolia Faucet - Alchemy](https://sepoliafaucet.com/)

#### ✅ デプロイヤーアカウントの作成

```
yarn run generate
```

![](/images/TheGraph-ScaffoldEth2/section-2/2_2_1.png)

hardhatの環境変数ファイルに以下のように保存されるはずです：

```
👛 Generating new Wallet
📄 Private Key saved to packages/hardhat/.env file
```

#### ✅ アカウントへの資金の追加

```
yarn account
```

![](/images/TheGraph-ScaffoldEth2/section-2/2_2_2.png)

これにより、公開アドレスとファンシーなQRコードが表示されます。そして残高?! 素晴らしいですね！

```

 ▄▄▄▄▄▄▄ ▄  ▄  ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄
 █ ▄▄▄ █ █▀▀▄ █▀█▄ ▄▄█ █ ▄▄▄ █
 █ ███ █ ▄▄██▀▄█ ▀ ███ █ ███ █
 █▄▄▄▄▄█ ▄▀▄▀▄▀▄▀▄ █ ▄ █▄▄▄▄▄█
 ▄  ▄▄▄▄▄▄▀█▄▀▄█▄▄ ▄█▀▄  ▄ ▄▄▄
 ▄▀▀█ █▄██▀▀▀▀▄█▀▀▄█▄██▀▄▄█▀█
   ▀▄▄ ▄█▄▄▄▀ █▀▄▀▀▄▄█ ██▀█ ▄▀
 ▄█▀▀██▄ ▀▄   █ ▀  ▀█ ▀▄▀█▄███
 ▄█▀██ ▄▄▄ ▀ ▄ █▄▀▄▄  ██▄▀▄▀▄█
 █▄ █▄ ▄█▄█▄▀▀▀ ▄█▄█▀▄ █▀▀▄▄▀▄
 ███▄█▀▄   █ ▀▄█▀ █████▄▄█▀█▄▄
 ▄▄▄▄▄▄▄ █▄ █▄ ██▀ █ █ ▄ █ ██
 █ ▄▄▄ █ █ ▀██▄██▀▀▄ █▄▄▄██▄▄
 █ ███ █ ▀▄▀▄ ▀▄▄ ▄█▀▀ ▄▄▄██▄▄
 █▄▄▄▄▄█ ▄█ ▄█  ▄▀▄█ ▄▀ ▄▄▄▀ ▀
▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀

Public address: 0x87f00B2c39F97CD00BC6d09777BC4327aCA39180

-- localhost -- 📡
   balance: 0
   nonce: 0

```

選択したチェーンからテストネットETHを送信してください。sepoliaからテストネットETHを入手するのは比較的簡単なので、sepoliaをお勧めします。以下の出力では、sepoliaの残高があることがわかります。

![](/images/TheGraph-ScaffoldEth2/section-2/2_2_3.png)

