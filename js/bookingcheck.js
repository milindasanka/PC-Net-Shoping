function loadDoc() {
                //alert('');
                var bookdate = document.getElementById("bookdate").value;
                var e = document.getElementById("jeep");
                var jeepno = e.options[e.selectedIndex].value;
                if (jeepno == '') {
                    alert('Select Jeep!');
                    return;
                }
                //bookdate
                var xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function() {
                    if (xhttp.readyState == 4 && xhttp.status == 200) {
                        document.getElementById("testid").innerHTML = xhttp.responseText;
                    }
                };
                xhttp.open("GET", "bookingcheck.php?id=" + jeepno + "&bookdate=" + bookdate, true);
                xhttp.send();
            }
//            function loadDoc2() {
//                alert('select jpppp')
//                var e = document.getElementById("jeep");
//                var jeepno = e.options[e.selectedIndex].value;
//                if (jeepno == '') {
//                    alert('Select Jeep!');
//                    return;
//                }
//            }
