function makeTargetTable(data, tableId){
  // 表の作成開始
  var rows=[];
  var table = document.createElement("table");

  // 表に2次元配列の要素を格納
  for(i = 0; i < data.length; i++){
    rows.push(table.insertRow(-1));  // 行の追加
    for(j = 0; j < data[0].length; j++){
      cell=rows[i].insertCell(-1);
      if (j < 4 || i == 0) {
        cell.appendChild(document.createTextNode(data[i][j]));
      } else if (j == 4) {
        var link = document.createElement("a");
        //リンク先設定
        link.href = data[i][j];
        link.target = "_blank";
        link.appendChild(document.createTextNode("■"));  
        cell.appendChild(link);
      } else if (j == 5) {
        var link = document.createElement("a");
        //リンク先設定
        link.href = `https://www.youtube.com/results?search_query=${data[i][1]}+${data[i][2]}+SINGLE 譜面確認`;
        link.target = "_blank";
        link.appendChild(document.createTextNode("Youtube"));  
        cell.appendChild(link);
      } else {
        var link = document.createElement("a");
        //リンク先設定
        link.href = data[i];
        link.target = "_blank";
        link.appendChild(document.createTextNode("■"));  
        cell.appendChild(link);
      }

      // 位置の設定
      cell.style.textAlign = "center";
      
      // 背景色の設定
      if (i == 0) {
        cell.style.backgroundColor = "#aaa";
      } else if (i % 2 == 0) {
        cell.style.backgroundColor = "#ddd";
      } else {
        cell.style.backgroundColor = "#eee";
      }
      // 幅の設定
      if (j == 1) {
        cell.style.width = "320px";
      } else if (j == 2) {
        cell.style.width = "110px";
      }
    }
  }
  // 指定したdiv要素に表を加える
  document.getElementById(tableId).appendChild(table);
}

window.onload = function(){
  var target = [];

  target.push(["Lv.", "タイトル", "難易度", "クリア", "wiki", "譜面確認", "削除"]);
  for (i in gon.targetSongs) {
    target.push([gon.targetSongs[i].level, gon.targetSongs[i].title, gon.targetSongs[i].difficulty, gon.targetSongs[i].cleared, gon.targetSongs[i].wikilink]);
  }

  makeTargetTable(target, "targetTable");
}