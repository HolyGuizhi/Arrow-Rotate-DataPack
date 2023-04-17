# 【Minecraft】<b>箭矢轉向器 Data Pack</b>  by Guizhi

<!--
  請注意，此檔案為.md檔，如果您下載下來並用普通文字檔(.txt)開啟較難以觀看，請轉移至Github頁面觀看即可。
-->

## <b>簡介</b>：
此資料包由桂枝製作，<br>
有小部分使用到NOPEname的代碼，用於將數值進行開根號，<br>
代碼來源網址將附於此頁下方。<br><br>

此資料包功能為：<br>
" 在不改變箭矢總動量大小的情況下，將動量方向轉向至朝向 `@e[tag=aim_pos,limit=1]` 的位置 "<br>

如果您不太了解上方說明，<br>
白話一點就是讓箭矢接下來轉向往 `@e[tag=aim_pos,limit=1]` 的位置射過去。<br><br>

而此資料包的特點就在於不是使用/tp的方式移動箭矢，<br>
所以不是 "追蹤" 箭矢，不會將箭矢加速或者定速。<br><br>

此資料包正用於我在製作的地圖中，<br>
主要功能是讓箭矢在靠近敵人一定距離時自動轉向至朝向它。<br>

非常強大。<br><br>

## <b>使用說明</b>：
- **前置步驟：**<br>
在希望箭矢射向的位置處召喚一個實體(marker)，<br>
並對此 marker 附上一個 `aim_pos` 的tag，方法為：<br>
`/summon marker <目標位置> {Tags:["aim_pos"]}`<br>
或是在已經有實體的情況下執行以下指令：<br>
`/tag <目標處的實體> add aim_pos`<br><br>

- **執行：**<br>
針對要修改動量方向的箭矢，以該箭矢為中心執行指令：<br>
`/execute as <目標箭矢> run function arrow_rotate:exe`<br>
請注意在箭矢改變朝向之後，<br>
如果 `auto_remove` 在 `mag` 記分板下分數為1，<br>
會刪除掉 `@e[tag=aim_pos,type=marker]` 實體，<br>
並且移除所有實體的 "aim_pos" 的tag。<br><br>

- **自動移除aim_pos：**<br>
如同前項所述，使用以下指令後，以後箭矢轉向後會自動移除aim_pos：<br>
`/scoreboard players set auto_remove mag 1`<br>
帶有tag為aim_pos的marker實體會被自動刪除，<br>
而非marker實體的則單純被移除此tag。<br><br>

- **重置設定：**<br>
`/function arrow_rotate:reset`<br><br>

## <b>補充</b>：
- 如需使用此作品拍攝於任何影音平台，或用於自己製作並公開的地圖、資料包...中，都是可以的，<br>
但請附上我的<b>Youtube頻道連結</b>：<br>
https://www.youtube.com/@Guizhi<br>
或者<b>此Github頁面</b>。<br><br>

- <b>敬告</b>，雖然資料包經過作者測試，但出現嚴重BUG的機會並非為0，<br>
  如造成您的地圖或其他檔案毀損，在此不做負責，因此仍建議您可以先做檔案備份，避免遺憾發生。<br><br>

- 如果此資料包有Bug的話可以回報至Youtube影片下方，在修正後會將該回報留言刪除，<br>
  本人有空的時候會盡速做修正。<br><br>

- 使用到的代碼來源：<br>
https://github.com/NOPEname/nn_math<br>
此資料包並非直接將該資料包整個套用到此處，<br>
如果有使用到的地方都有做註解，詳細請看各個指令檔案。<br>

<br><br>
## <b>Have a good day :D</b>
