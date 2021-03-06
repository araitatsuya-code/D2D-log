# D2D log 
## リンク　<現在は動かしていません。>~~http://www.araitcode.com/~~<br>

<img width="300" alt="D2D ER図" src="https://user-images.githubusercontent.com/58362112/74590943-aee6eb00-5056-11ea-9830-d7408bea24a6.jpg">

# 概要
ツイッターなどのSNSで見る、学習時間の記録投稿を参考にもっと簡単に手間なく出来る様にすること<br>
また、その記録を蓄積、視覚化することで学習や趣味のレベルアップの手助けをする<br>
ためのアプリケーションです。<br>

# 制作背景
自分の勉強時間や努力を蓄積することは良い習慣ですが<br>
記録自体が面倒であったり、記録しても一見では累積時間しかわからない点が問題であると思いました。<br>
このアプリではグラフ化とタグ機能を通じ、それぞれの学習時間や視覚化されたグラフを使うことで<br>
その様な問題を解決し、継続的な学習と、過去の学習の振り返りから次の学習に生かすなど<br>
次のステップを考える際に役立てられれば良いと思いこのアプリを作りました。<br>

# 機能

## 投稿ページ
<img width="300" alt="D2D投稿画面" src="https://user-images.githubusercontent.com/58362112/74590970-eeadd280-5056-11ea-85af-d5e220c3aa74.png">

・投稿機能<br>
・投稿のタグ付け機能、タグで絞り込み機能（acts-as-taggable-on使用）<br>
・投稿表示検索機能（本人、フォローしているユーザーの投稿）<br>
・いいねボタン<br>

## 個人ページ
<img width="300" alt="D2D_github_grass" src="https://user-images.githubusercontent.com/58362112/74817889-029c5180-5341-11ea-83a1-c502234a0345.png">

・合計時間表示機能<br>
総合計時間の文字表示<br>
・githubの草(activities)を表示（スマホ画面では非表示）<br>
・グラフ表示機能<br>
週別、月別、年別で切り替え可能<br>
![グラフ画面](https://user-images.githubusercontent.com/58362112/74817942-1e075c80-5341-11ea-98bf-0c7ad1167dcc.gif)
・投稿表示検索機能<br>
・Todo機能

# 工夫した点
## フロントサイド
* bootstrapとCSSを使用した、レスポンシブ対応<br>

## サーバーサイド
* Chartkickのgemを使用して各期間ごとのデータをグラフ表示出来る様にした<br>
* acts-as-taggable-onを使用したタグの絞り込みと絞り込みを利用したグラフ機能<br>
* データベース文字コード変更による絵文字投稿機能
<img width="300" alt="emozi" src="https://user-images.githubusercontent.com/58362112/76682966-b4c6f080-6643-11ea-99fa-2ecfc8767d14.png">

## インフラ
* AWS（EC2）へのデプロイ、Route53を使用したドメイン設定<br>
* ELBをエンドポイントとする常時SSL化
* S3を用いた画像データのクラウドストレージ保存<br>
* sshdのLISTENポート番号を22番から変更<br>

# サイトフローチャート
<img width="400" alt="D2Dサイトフローチャート" src="https://user-images.githubusercontent.com/58362112/76683154-2ce1e600-6645-11ea-9924-a32163ca9daa.png">

# ER図
<img width="400" alt="d2derd" src="https://user-images.githubusercontent.com/58362112/76683132-f906c080-6644-11ea-926d-14bff5093030.png">

# 開発環境
Ruby 2.5.1<br>
Rails 5.2.4.1<br>
jquery<br>
Saas<br>
MySQL<br>
AWS（EC2,S3,route53,Certificate Manager）<br>

