# D2D log 
## リンク　http://www.araitcode.com/<br>

<img width="300" alt="D2D ER図" src="https://user-images.githubusercontent.com/58362112/74590943-aee6eb00-5056-11ea-9830-d7408bea24a6.jpg">

# 概要
ツイッターでよく見る、学習時間の記録ツイートをもっと簡単に手間なく出来る様にすることと<br>
その記録を蓄積、視覚化することで学習や趣味のレベルアップの手助けをする<br>
ためのアプリケーションです。<br>

# 制作背景
自分の勉強時間や努力を蓄積、視覚化することはモチベーションアップに繋がる良い習慣ですが<br>
多くの方は途中でやめてしまっている現状があり、私はその理由の一つとして<br>
・前日の自分の投稿からコピペ、貼り付け、編集〜という手間<br>
に原因があるのではないかと思いました。<br>
その様な問題を解決し、学習に役立てられれば良いと思いこのアプリを作りました。<br>

# 機能

## 投稿ページ
<img width="300" alt="D2D投稿画面" src="https://user-images.githubusercontent.com/58362112/74590970-eeadd280-5056-11ea-85af-d5e220c3aa74.png">

・投稿機能<br>
・投稿表示検索機能（本人、フォローしているユーザーの投稿）<br>
・いいねボタン<br>

## 個人ページ
<img width="300" alt="D2Dguraph画面" src="https://user-images.githubusercontent.com/58362112/74590982-1866f980-5057-11ea-81d1-5bd9e02fc700.png">

・合計時間表示機能<br>
総合計時間の文字表示<br>
・グラフ表示機能<br>
週別、月別、年別で切り替え可能<br>
・投稿表示検索機能<br>

# 工夫した点
## サーバーサイド
* bootstrapを使用した、レスポンシブ対応<br>
* Chartkickのgemを使用して各期間ごとのデータをグラフ表示出来る様にした<br>

## インフラ
* AWS（EC2）へのデプロイ、Route５３を使用したドメイン設定<br>
* S3を用いた画像データのクラウドストレージ保存<br>
* SSLポート番号を２２番から変更<br>

# サイトフローチャート
<img width="300" alt="D2Dサイトフローチャート" src="https://user-images.githubusercontent.com/58362112/74591631-e6f12c80-505c-11ea-83ac-2a5de8bb8eac.png">

# ER図
<img width="400" alt="D2D ER図" src="https://user-images.githubusercontent.com/58362112/74590897-3718c080-5056-11ea-96a0-29f28c557066.png">

# 開発環境
Ruby 2.5.1<br>
Rails 5.2.4.1<br>
jquery<br>
MySQL<br>
AWS（EC2,S3,route53）<br>

