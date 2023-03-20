<h1>Védett fajok</h1>
<table class="table table-striped">
    <thead class="thead-dark">
        <tr>
            <th>Név</th>
            <th>Feljegyzés</th>
            <th>Gyakoriság</th>
        </tr>
    </thead>
    <tbody></tbody>
</table>


<script>
    getData('../server/vedett.php', renderTbl)

    function renderTbl(data) {
        console.log(data)
        let strTbl = ''
        for (let obj of data) {

            let gyakorisagNev
            if(obj.gyakorisag=='A')
                gyakorisagNev='gyakori'
            if(obj.gyakorisag=='B')
                gyakorisagNev='közönséges' 
            if(obj.gyakorisag=='C')
                gyakorisagNev='ritka'  

            strTbl += `
            <tr>
                <td>${obj.nev}</td>
                <td>${obj.feljegy}</td>
                <td>${gyakorisagNev}</td>
            </tr>`
        }
        document.querySelector('tbody').innerHTML=strTbl
    }
</script>