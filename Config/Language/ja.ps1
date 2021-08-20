﻿<#
language config:Japanese version
#>


# function Create-EventIDStatistics
$Create_EventIDStatistics_CreatingStatisticsMessage = "イベントIDを集計します。`n少々お待ちください。"
$Create_EventIDStatistics_TotalEventLogs = "イベントの合計:"
$Create_EventIDStatistics_FileSize = "ファイルサイズ:"
$Create_EventIDStatistics_FirstEvent = "最初のイベント:"
$Create_EventIDStatistics_LastEvent = "最後のイベント:"
$Create_EventIDStatistics_ProcessingTime = "処理時間：{0}時{1}分{2}秒"
$Create_EventIDStatistics_Count = "カウント"
$Create_EventIDStatistics_ID = "ID"
$Create_EventIDStatistics_Event = "イベント"
$Create_EventIDStatistics_TimelineOutput = "タイムライン出力"
$Create_EventIDStatistics_Comment = "コメント"

$1100 = @{
    EventTitle = 'イベントログサービスがシャットダウンした';
    Comment    = 'Good for finding signs of anti-forensics but most likely false positives when the system shuts down.';
}
$1101 = @{
    EventTitle = '監査イベントがトランスポートによって削除された';
}
$1102 = @{
    EventTitle     = 'イベントログがクリアされた';
    TimelineDetect = "Yes";
    Comment        = 'Should not happen normally so this is a good event to look out for.';
}
$1107 = @{
    EventTitle = 'イベント処理によるエラー';
}
$4608 = @{
    EventTitle = 'Windowsが起動された';
}
$4610 = @{
    EventTitle = '認証パッケージがローカル セキュリティ機関によって読み込まれた';
}
$4611 = @{
    EventTitle = '信頼されたログオン プロセスがローカルセキュリティ機関で登録された';
}
$4614 = @{
    EventTitle = 'セキュリティ アカウント マネージャによって通知パッケージが読み込まれた';
}
$4616 = @{
    EventTitle = 'システム時刻の変更';
}
$4622 = @{
    EventTitle = 'セキュリティ パッケージがローカル セキュリティ機関によって読み込まれた';
}
$4624 = @{
    EventTitle     = 'アカウントログオン';
    TimelineDetect = "Yes";
}
$4625 = @{
    EventTitle     = 'ログオンに失敗';
    TimelineDetect = "Yes"; 
}
$4634 = @{
    EventTitle     = 'ログオフ';
    TimelineDetect = "Yes"
}
$4647 = @{
    EventTitle     = 'ログオフ';
    TimelineDetect = "Yes" 
}
$4648 = @{
    EventTitle     = '明示的なログオン';
    TimelineDetect = "Yes"
}
$4672 = @{
    EventTitle     = '管理者ログオン';
    TimelineDetect = "Yes";
}
$4688 = @{
    EventTitle = '新しいプロセスが起動された';
}
$4696 = @{
    EventTitle = 'プライマリートークンがプロセスに割り当てられた';
}
$4692 = @{
    EventTitle = 'データ保護用のマスターキーのバックアップが行われた';
}
$4697 = @{
    EventTitle = 'サービスがインストールされた';
}
$4717 = @{
    EventTitle = 'システムセキュリティのアクセス権がアカウントに付与された';
}
$4719 = @{
    EventTitle = 'システム監査ポリシーが変更された';
}
$4720 = @{
    EventTitle     = 'ユーザアカウントが作成された';
    TimelineDetect = "Yes"
}
$4722 = @{
    EventTitle = 'ユーザアカウントが有効になった';
}
$4724 = @{
    EventTitle = 'パスワードリセット';
}
$4725 = @{
    EventTitle = 'ユーザアカウントが無効になった';
}
$4726 = @{
    EventTitle = 'ユーザアカウントが削除された';
} 
$4728 = @{
    EventTitle = 'ユーザがセキュリティグローバルグループに追加された';
}
    
$4729 = @{
    EventTitle = 'ユーザがセキュリティグローバルグループから削除された';
}
    
$4732 = @{
    EventTitle = 'ユーザがセキュリティローカルグループに追加された';
}
    
$4733 = @{
    EventTitle = 'ユーザがセキュリティローカルグループから削除された';
}
    
$4735 = @{
    EventTitle = 'セキュリティローカルグループの変更';
}
    
$4727 = @{
    EventTitle = 'セキュリティグローバルグループの変更';
}
    
$4738 = @{
    EventTitle = 'ユーザアカウントプロパティの変更';
}
    
$4739 = @{
    EventTitle = 'ドメインポリシーが変更された';
}
    
$4776 = @{
    EventTitle = 'ローカルユーザへのNTLMログオン';
}
    
$4778 = @{
    EventTitle = 'RDPセッションの再接続またはユーザーの簡易切り替えによるログオン';
}
    
$4779 = @{
    EventTitle = 'RDPセッションの切断または簡易切り替えによるログオフ';
}
    
$4797 = @{
    EventTitle = '空のパスワードでアカウントの照会を行った';
}
      
$4798 = @{
    EventTitle = 'ユーザーのローカルグループメンバシップが列挙された';
}
    
$4799 = @{
    EventTitle = 'ローカルグループのメンバーシップを列挙した';
}
     
$4781 = @{
    EventTitle = 'ユーザ名が変更された';
}
    
$4800 = @{
    EventTitle = '端末がロックされた’;
}
    
$4801 = @{
    EventTitle = '端末がロック解除された';
}
    
$4826 = @{
    EventTitle = 'ブート構成データを読み込んだ';
}
    
$4902 = @{
    EventTitle = 'ユーザごとの監査ポリシーテーブルが作成された';
}
     
$4904 = @{
    EventTitle = 'セキュリティイベントソースの登録を行った';
}
    
$4905 = @{
    EventTitle = 'セキュリティイベントソースの登録を解除した';
}
     
$4907 = @{
    EventTitle = 'オブジェクトの監査設定が変更された';
}
     
$4944 = @{
    EventTitle = 'ファイアウォール起動時に有効なポリシー';
}
    
$4945 = @{
    EventTitle = 'Rule listed when the firewall started' ;
    Comment    = "ファイアウォールが起動する際に大量のログが発生するのでフィルタした方が良い";
}
$4946 = @{
    EventTitle = 'ファイアウォールの例外リストにルールが追加された';
}
    
$4947 = @{
    EventTitle = 'ファイアウォールの例外リストのルールが変更された';
}
    
$4948 = @{
    EventTitle = 'ファイアウォールの例外リストのルールが削除された';
}
    
$4954 = @{
    EventTitle = 'ファイアウォールグループに新しい設定が適用された';
}
    
$4956 = @{
    EventTitle = 'ファイアウォールのアクティブプロファイルが変更された';
}
    
$5024 = @{
    EventTitle = 'ファイアウォールが起動された';
}
    
$5033 = @{
    EventTitle = 'ファイアウォールドライバが起動された';
}
     
$5038 = @{
    EventTitle = 'コードの整合性により、ファイルの画像ハッシュが無効であると判断された';
}
    
$5058 = @{
    EventTitle = 'キーファイルの操作';
}
     
$5059 = @{
    EventTitle = 'キーの移行操作';
}
    
$5061 = @{
    EventTitle = '暗号化操作';
}
     
$5140 = @{
    EventTitle = 'ネットワーク共有オブジェクトへのアクセスがあった';
}
    
$5142 = @{
    EventTitle = 'ネットワーク共有オブジェクトが追加された';
}
    
$5144 = @{
    EventTitle = 'ネットワーク共有オブジェクトが削除された';
}
    
$5379 = @{
    EventTitle = 'クレデンシャルマネージャの認証情報が読み込まれた';
}
    
$5381 = @{
    EventTitle = 'Valutの認証情報が読み取られた';
}
    
$5382 = @{
    EventTitle = 'Valutの認証情報が読み取られた';
}
    
$5478 = @{
    EventTitle = 'IPsecサービスが起動された';
}
    
$5889 = @{
    EventTitle = 'COM+ カタログからオブジェクトが削除された';
}
    
$5890 = @{
    EventTitle = 'COM+ カタログからオブジェクトが追加された';
}
$unregistered = @{
    EventTitle = "不明";
}




# function Create-LogonTimeline
$Create_LogonTimeline_Welcome_Message = "サービスアカウント、ローカルシステム、マシンアカウント等の不要なイベントを省いて、ログオンタイムラインを作成します。`n少々お待ち下さい。"
$Create_LogonTimeline_Filesize = "ファイルサイズ = {0}" 
$Create_LogonTimeline_Estimated_Processing_Time = "想定処理時間：{0}時{1}分{2}秒"
$Create_LogonTimeline_ElapsedTimeOutput = "{0}日{1}時{2}分{3}秒"
$Create_LogonTimeline_Timezone = "タイムゾーン"
$Create_LogonTimeline_LogonTime = "ログオン時間"
$Create_LogonTimeline_LogoffTime = "ログオフ時間"
$Create_LogonTimeline_ElapsedTime = "経過時間"
$Create_LogonTimeline_Type = "タイプ"
$Create_LogonTimeline_TargetUser = "ターゲットユーザ"
$Create_LogonTimeline_Auth = "認証"
$Create_LogonTimeline_isAdmin = "管理者"
$Create_LogonTimeline_SourceWorkstation = "送信元のホスト名"
$Create_LogonTimeline_SourceIpAddress = "送信元のIPアドレス"
$Create_LogonTimeline_SourceIpPort = "送信元のポート番号"
$Create_LogonTimeline_LogonID = "ログオンID"
$Create_LogonTimeline_Processing_Time = "処理時間：{0}時{1}分{2}秒"
$Create_LogonTimeline_NoLogoffEvent = "ログオフイベント無し"
$Create_LogonTimeline_Total_Logon_Event_Records = "ログオンイベントの合計: "
$Create_LogonTimeline_Data_Reduction = "ログイベントのデータ削減率: "
$Create_LogonTimeline_Total_Filtered_Logons = "フィルタ済のログオンイベント: "
$Create_LogonTimeline_Type0 = "タイプ  0 システムログオン（端末の起動時間): "
$Create_LogonTimeline_Type2 = "タイプ  2 インタラクティブログオン (例：コンソール、VNC等) (注意：認証情報がメモリに格納されて、盗まれる危険性がある。):"
$Create_LogonTimeline_Type3 = "タイプ  3 ネットワークログオン (例：SMB共有、netコマンド、rpcclient、psexec、winrm等々):"
$Create_LogonTimeline_Type4 = "タイプ  4 バッチログオン (例：スケジュールされたタスク):"
$Create_LogonTimeline_Type5 = "タイプ  5 サービスログオン:"
$Create_LogonTimeline_Type7 = "タイプ  7 ロック解除（またはRDPの再接続)のログオン:"
$Create_LogonTimeline_Type8 = "タイプ  8 平文のネットワークログオン (例：IISのBasic認証)(注意：ハッシュ化されていないパスワードが使用されている。):"
$Create_LogonTimeline_Type9 = "タイプ  9 新しい認証情報でのログオン (例：「runas /netonly」のコマンド)(注意：認証情報がメモリに格納されて、盗まれる危険性がある。):"
$Create_LogonTimeline_Type10 = "タイプ 10 リモートインタラクティブのログオン (例：RDP) (注意：認証情報がメモリに格納されて、盗まれる危険性がある。):"
$Create_LogonTimeline_Type11 = "タイプ 11 キャッシュされた認証情報によるインタラクティブログオン (例：DCに接続できない場合):"
$Create_LogonTimeline_Type12 = "タイプ 12 キャッシュされた認証情報によるリモートインタラクティブログオン (例：キャッシュされた認証情報によるRDP、Microsoftライブアカウントの使用):"
$Create_LogonTimeline_Type13 = "タイプ 13 キャッシュされた認証情報によるロック解除のログオン (例：DCに接続できない場合のロック解除またはRDP再接続):"
$Create_LogonTimeline_TypeOther = "その他のタイプのログオン:"

#function Show-Contributors
$Show_Contributors =
"コントリビューター:

DustInDark - ローカライゼーション、和訳
つぼっく - 和訳

コントリビューターを募集しています！
"