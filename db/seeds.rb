# ユーザー1: 山田太郎 - 元営業マン、Railsの基本を学んでいる
user1 = User.create!(
  email: "yamada@example.com",
  password: "password",
  password_confirmation: "password",
  nickname: "やまだRails"
)

# ユーザー2: 佐藤花子 - デザイナーからエンジニア転向希望
user2 = User.create!(
  email: "sato@example.com",
  password: "password",
  password_confirmation: "password",
  nickname: "さとうコード"
)

# ユーザー3: 鈴木一郎 - IT業界未経験、プログラミングスクール受講中
user3 = User.create!(
  email: "suzuki@example.com",
  password: "password",
  password_confirmation: "password",
  nickname: "すずきエンジニア"
)

puts "ユーザーの作成が完了しました！"

# やまだRailsの投稿
Post.create!(
  title: "Rails入門 - MVCの基本を理解する",
  content: "今日はRailsのMVCアーキテクチャについて学びました。Model、View、Controllerがそれぞれどのような役割を持ち、どのように連携するのかがようやく理解できてきました。特にControllerがリクエストを受け取り、Modelからデータを取得して、Viewに渡すという流れが重要だと感じています。まだまだ学ぶことは多いですが、少しずつ前進していきたいと思います。",
  user: user1
)

Post.create!(
  title: "ActiveRecordの使い方に苦戦中",
  content: "今週はActiveRecordについて学んでいますが、少し苦戦しています。特に関連付け（アソシエーション）の概念が難しいです。has_many、belongs_toの違いや、through、source、foreign_keyなどのオプションがまだしっくりきていません。明日はサンプルアプリを作りながら理解を深めていく予定です。誰か良い学習リソースを知っていれば教えてください。",
  user: user1
)

Post.create!(
  title: "RouteとControllerの学習記録",
  content: "今日はRailsのルーティングとコントローラーの関係について重点的に学習しました。resourcesメソッドを使うと7つのアクションに対応するルートが自動的に設定されること、そしてそれぞれがHTTPメソッド（GET, POST, PATCHなど）と対応していることを学びました。また、コントローラーの中でbeforeアクションを使って共通処理を行う方法も習得。少しずつですが、Railsの全体像が見えてきた気がします。次はViewについて詳しく学んでいきます。",
  user: user1
)

# さとうコードの投稿
Post.create!(
  title: "デザイナーからRailsエンジニアへの転身を決意",
  content: "5年間UIデザイナーとして働いてきましたが、よりプロダクトの根幹に関わりたいと思い、Webエンジニアへの転身を決めました。HTML/CSSは仕事で使っていたので得意ですが、Ruby on Railsは完全な初心者です。まずはProgateで基礎を学び、次にUdemyの入門コースを受講中。デザインのバックグラウンドを活かして、使いやすくて美しいアプリケーションを作れるエンジニアになることが目標です。日々の学習を記録していきます！",
  user: user2
)

Post.create!(
  title: "初めてのRailsアプリケーションを作成",
  content: "今日、ついに自分でRailsアプリケーションを作成しました！「rails new」コマンドを実行した時の感動は忘れられません。まだCRUD操作の基本的な部分を実装しただけの簡単なブログアプリですが、自分の手でWebアプリケーションを作り上げる喜びを感じています。次はデプロイにチャレンジしてみようと思います。Herokuが初心者には良いという話を聞いたので、そちらを使ってみる予定です。少しずつですが、確実に成長していると実感できる瞬間でした。",
  user: user2
)

Post.create!(
  title: "Railsでのフォーム作成について学習中",
  content: "今週はRailsでのフォーム作成について学んでいます。form_withヘルパーの使い方や、Strong Parametersでのセキュリティ対策などが特に勉強になりました。以前はHTMLで直接フォームを書いていたので、Railsのフォームヘルパーの便利さに驚いています。特にモデルとの連携やバリデーションエラーの表示などが簡単に実装できるのが素晴らしいと感じました。デザイナー時代のフォームUX設計の知識も活かせそうで嬉しいです。次はJavaScriptとの連携方法を学びたいと思います。",
  user: user2
)

# すずきエンジニアの投稿
Post.create!(
  title: "プログラミングスクールでのRails学習がスタート",
  content: "今日からプログラミングスクールでのRails学習が本格的に始まりました。事前学習としてRubyの基礎は学んでいましたが、Railsはまさに「マジック」という表現がぴったりだと感じています。「convention over configuration（設定より規約）」の思想に最初は戸惑いましたが、徐々に慣れてきて、この思想のおかげで高速に開発できることが理解できてきました。チーム開発でのGitの使い方も同時に学んでおり、エンジニアとしての基礎体力をつけている実感があります。",
  user: user3
)

Post.create!(
  title: "RailsでのDB設計の重要性を実感",
  content: "今週のカリキュラムではデータベース設計について深く学びました。テーブル設計、正規化、インデックスの重要性など、アプリケーションの根幹に関わる部分を理解できたことが大きな収穫です。特にhas_manyとbelongs_toの関係性やthrough関連を使った多対多の実装方法が勉強になりました。実際にER図を描きながら設計することで、頭の中が整理されていく感覚があります。また、マイグレーションファイルの役割や使い方も理解が深まりました。データベース設計がしっかりしていることが、後々の開発効率に大きく影響することを実感しています。",
  user: user3
)

Post.create!(
  title: "RSpecでのテスト駆動開発に挑戦中",
  content: "今日はRSpecを使ったテスト駆動開発（TDD）に初めて挑戦しました。最初は「テストを先に書く」という考え方に違和感がありましたが、実際にやってみると設計がクリアになり、バグの早期発見にも役立つことが分かりました。FactoryBotでのテストデータ作成や、モック/スタブを使ったテストの書き方など、まだ慣れない概念が多くて苦戦していますが、少しずつマスターしていきたいと思います。品質の高いコードを書くエンジニアになるために、テストの重要性をしっかり理解して実践していきます。明日はシステムスペックに挑戦する予定です。",
  user: user3
)

puts "投稿の作成が完了しました！"
