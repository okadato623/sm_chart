// 表の動的作成
function makeTable(data, tableId) {
  // 表の作成開始
  var rows = [];
  var table = document.createElement("table");

  // 表に2次元配列の要素を格納
  for (i = 0; i < data.length; i++) {
    rows.push(table.insertRow(-1)); // 行の追加
    for (j = 0; j < data[0].length; j++) {
      cell = rows[i].insertCell(-1);
      if (j == 1) {
        continue;
      } else if (j < 8 || i == 0) {
        cell.appendChild(document.createTextNode(data[i][j]));
      } else {
        var link = document.createElement("a");
        //リンク先設定
        link.href = `https://www.youtube.com/results?search_query=${
          data[i][2]
        }+${data[i][3]}+SINGLE 譜面確認`;
        link.target = "_blank";
        link.appendChild(document.createTextNode("Youtube"));
        cell.appendChild(link);
      }
      // 位置の設定
      if (i == 0) {
        cell.style.textAlign = "center";
      } else if (j == 5) {
        cell.style.textAlign = "right";
      } else if (j == 3) {
        cell.style.textAlign = "left";
      } else {
        cell.style.textAlign = "center";
      }

      // 背景色の設定
      if (i == 0) {
        cell.style.backgroundColor = "#aaa";
      } else if (i % 2 == 0) {
        cell.style.backgroundColor = "#ddd";
      } else {
        cell.style.backgroundColor = "#eee";
      }
      // 幅の設定
      if (j == 3) {
        cell.style.width = "320px";
      } else if (j == 4) {
        cell.style.width = "110px";
      } else if (j == 5) {
        cell.style.width = "70px";
      }
    }
  }
  // 指定したdiv要素に表を加える
  document.getElementById(tableId).appendChild(table);
}

function getToday() {
  var today = new Date();
  today.setDate(today.getDate());
  var yyyy = today.getFullYear();
  var mm = ("0" + (today.getMonth() + 1)).slice(-2);
  var dd = ("0" + today.getDate()).slice(-2);
  document.getElementById("fromDate").max = yyyy + "-" + mm + "-" + dd;
  document.getElementById("toDate").max = yyyy + "-" + mm + "-" + dd;
  document.getElementById("toDate").value = yyyy + "-" + mm + "-" + dd;
}

function formatDate(date, format) {
  format = format.replace(/yyyy/g, date.getFullYear());
  format = format.replace(/MM/g, ("" + (date.getMonth() + 1)).slice(-2));
  format = format.replace(/dd/g, ("" + date.getDate()).slice(-2));
  format = format.replace(/HH/g, ("0" + date.getHours()).slice(-2));
  format = format.replace(/mm/g, ("0" + date.getMinutes()).slice(-2));
  format = format.replace(/ss/g, ("0" + date.getSeconds()).slice(-2));
  format = format.replace(/SSS/g, ("00" + date.getMilliseconds()).slice(-3));
  return format;
}

function clearTable(tableId) {
  var table = document.getElementById(tableId);

  if (table.hasChildNodes()) {
    table.removeChild(table.firstChild);
  }
}

window.onload = function() {
  var data = [];
  data.push([
    "プレイ日",
    "",
    "Lv.",
    "タイトル",
    "難易度",
    "スコア",
    "生存秒",
    "リザルト",
    "譜面確認"
  ]);
  makeTable(data, "table");
};
