# OHENRO_RUN

## サービスURL
https://www.ohenro-running.com/

## サービス概要
ランニング・ウォーキングを記録しながら、四国のお遍路巡りが体験できる運動継続補助アプリです。

## 想定されるユーザー層
運動を継続したいが、なかなか続かない人。
お遍路に興味がある人。

## サービスコンセプト
健康のために運動を行うことは大事と分かっていても継続することは難しいです。
継続のためには自分が日々どれだけ積み上げてきたかを振り返れるよう、記録を行うことが重要です。
走った距離を記録し、自分の努力を振り返ることのできるサービスを作りたいと思いました。
また、記録だけではモチベーションを維持しづらいと考え、私の出身でもある四国のお遍路巡りを要素として取り込むようにしました。

【お遍路とは】
讃岐（現香川県）で生まれた弘法大師・空海のゆかりがある四国八十八カ所霊場を歩いて巡ること。
弘法大師の軌跡をたどると煩悩が取り除かれ、ご利益がもたらされると言い伝えられている。
全長約1400キロメートルのコース。

徳島県の第1番札所からスタートし、記録した距離に応じて現在地が更新されます。
到達したお寺は実績ページ「御朱印帳」から確認できます。
ChatGPTを使用して、到達した地域周辺で擬似的な思い出を作成します。


## 主な機能
### 会員登録・ログイン（googleアカウントによるソーシャルログイン）
<kbd><img src="https://i.gyazo.com/bbdb985b3d8d0ae595724d25a137f658.png" /></kbd>

### 走行距離の記録
<kbd><img src="" /></kbd>

### 位置情報表示
<kbd><img src="" /></kbd>

### 実績表示（御朱印帳）
<kbd><img src="" /></kbd>

### 思い出生成機能
<kbd><img src="" /></kbd>


## 使用技術
| カテゴリ | 使用技術 |
| --- | --- |
| フロントエンド | Ruby on Rails ・ Javascript |
| サーバーサイド | Ruby on Rails ・ Ruby |
| データベース | PostgreSQL |
| 認証 | Sorcery |
| インフラ | HEROKU |

## 画面遷移図URL
https://www.figma.com/file/iHe6eMo0UjlzPVOaaAWrEc/OHENRO_RUN-%E3%83%9A%E3%83%BC%E3%82%B8%E4%B8%80%E8%A6%A7?type=design&mode=dev&t=lWnH3WirYv3GAy54-1

## ER図
[![Image from Gyazo](https://i.gyazo.com/40aca41263b3cf9327e25e66a38a1316.png)](https://gyazo.com/40aca41263b3cf9327e25e66a38a1316)
