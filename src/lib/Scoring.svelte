<script lang="ts">
    let scoreSachkenntnis: number | undefined = $state(undefined);
    let scoreAusdrucksvermoegen: number | undefined = $state(undefined);
    let scoreGespraechsfaehigkeit: number | undefined = $state(undefined);
    let scoreUeberzeugungskraft: number | undefined = $state(undefined);

    let sum = $derived((scoreSachkenntnis ?? 0) + (scoreAusdrucksvermoegen ?? 0) + (scoreGespraechsfaehigkeit ?? 0) + (scoreUeberzeugungskraft ?? 0));
</script>

<table class="judge_points_table">
    <tbody>
    <tr>
        <td>Sachkenntnis</td>
        <td><select bind:value={scoreSachkenntnis}>
            <option value={undefined} disabled selected>Nicht ausgewählt</option>
            <option value={0}>0 - Kennt sich gar nicht aus, nur falsche Behauptungen</option>
            <option value={1}>1 - Kennt sich kaum aus, vieles falsch</option>
            <option value={2}>2 - Weiß einigermaßen Bescheid, manches teilweise richtig</option>
            <option value={3}>3 - Kennt sich gut aus, kennt die wichtigsten Fakten</option>
            <option value={4}>4 - Genau informiert, kennt alle wichtigen Gesichtspunkte</option>
            <option value={5}>5 - Ausgezeichnet vorbereitet, hat alles parat, Detailwissen und Kenntnis der
                Zusammenhänge
            </option>
        </select></td>
    </tr>
    <tr>
        <td>Ausdrucksvermögen</td>
        <td><select bind:value={scoreAusdrucksvermoegen}>
            <option value={undefined} disabled selected>Nicht ausgewählt</option>
            <option value={0}>0 - Völlig unverständlich</option>
            <option value={1}>1 - Gerade noch verständlich</option>
            <option value={2}>2 - Einigermaßen verständlich</option>
            <option value={3}>3 - Verständlich und flüssig</option>
            <option value={4}>4 - Klar, anschaulich und lebendig</option>
            <option value={5}>5 - Jederzeit angemessen, einprägsam und originell</option>
        </select></td>
    </tr>
    <tr>
        <td>Gesprächsfähigkeit</td>
        <td><select bind:value={scoreGespraechsfaehigkeit}>
            <option value={undefined} disabled selected>Nicht ausgewählt</option>
            <option value={0}>0 - Hört gar nicht zu, beteiligt sich gar nicht am Gespräch</option>
            <option value={1}>1 - Hört wenig zu, redet kaum zu den Gesprächspartnern</option>
            <option value={2}>2 - Hört meistens zu, geht manchmal auf die anderen ein</option>
            <option value={3}>3 - Hört zum Teil gut zu, berücksichtigt die anderen meistens</option>
            <option value={4}>4 - Hört gut zu, schließt gut an die anderen an</option>
            <option value={5}>5 - Hört sehr aufmerksam zu, fragt nach, zeigt Übersicht, führt Gedanken der
                anderen weiter
            </option>
        </select></td>
    </tr>
    <tr>
        <td>Überzeugungskraft</td>
        <td><select bind:value={scoreUeberzeugungskraft}>
            <option value="{undefined}" disabled selected>Nicht ausgewählt</option>
            <option value={0}>0 - Position völlig unklar, keine Begründungen</option>
            <option value={1}>1 - Fast nur Behauptungen, Position kaum begründet</option>
            <option value={2}>2 - Position teilweise begründet, viele Gründe eher schwach</option>
            <option value={3}>3 - Teils schwache, teils gute Gründe</option>
            <option value={4}>4 - Alles gut begründet, Gründe gut gewichtet</option>
            <option value={5}>5 - In jeder Hinsicht überzeugend begründet, Blick für das Wesentliche im
                Fortschritt der Debatte
            </option>
        </select></td>
    </tr>
    </tbody>
</table>
<span style="font-weight: bold; font-size: 24px">Summe: {sum}</span>

<style>
    .judge_points_table {
        width: 100%;
    }

    .judge_points_table tr {
        display: flex;
        flex-direction: row;
        align-items: center;
    }

    .judge_points_table tr td {
        width: 50%;
    }

    .judge_points_table tr td select {
        width: 100%;
    }
</style>