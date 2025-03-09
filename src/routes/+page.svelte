<script lang="ts">
    import Scoring from "$lib/Scoring.svelte";
    import {onMount} from "svelte";

    let rows = $state(1);

    onMount(() => {
        window.onbeforeunload = function() {
            return "Seite neuladen? Alle Eingaben werden verloren gehen!";
        }
    })
</script>

<svelte:head>
    <title>Bewertungsbogen - Jugend Debattiert</title>
</svelte:head>

<h1 style="color: #f62a21">Bewertungsbogen Qualifikationsrunden</h1>
<button onclick={() => window.print()} style="width: fit-content">Drucken</button>
<div style="height: 16px"></div>
<div style="display: flex; flex-direction: row; align-items: center; gap: 8px">
    <span>Zur Frage:</span>
    <input style="flex: 1; max-width: 600px" type="text" id="question"
    placeholder="Sollten Schüler ihre Lehrer bewerten">
    <span>?</span>
</div>

<div style="height: 16px"></div>

<table style="width: 100%; border-collapse: collapse;" id="main_judge_table">
    <thead>
    <tr>
        <th>
            <div>Name Pro 1<input type="text" placeholder="Name Pro 1" id="t_pro1"></div>
        </th>
        <th>
            <div>Name Contra 1<input type="text" placeholder="Name Contra 1" id="t_con1"></div>
        </th>
        <th>
            <div>Name Pro 1<input type="text" placeholder="Name Pro 2" id="t_pro2"></div>
        </th>
        <th>
            <div>Name Contra 2<input type="text" placeholder="Name Contra 2" id="t_con2"></div>
        </th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>
            <div><textarea placeholder="Eröffnungsrunde"></textarea></div>
        </td>
        <td>
            <div><textarea placeholder="Eröffnungsrunde"></textarea></div>
        </td>
        <td>
            <div><textarea placeholder="Eröffnungsrunde"></textarea></div>
        </td>
        <td>
            <div><textarea placeholder="Eröffnungsrunde"></textarea></div>
        </td>
    </tr>
    {#each {length: rows} as _, i}
        <tr>
            <td>
                <div><textarea placeholder="Freie Aussprache"></textarea></div>
            </td>
            <td>
                <div><textarea placeholder="Freie Aussprache"></textarea></div>
            </td>
            <td>
                <div><textarea placeholder="Freie Aussprache"></textarea></div>
            </td>
            <td>
                <div><textarea placeholder="Freie Aussprache"></textarea></div>
            </td>
        </tr>
    {/each}
    <tr id="add_row_row">
        <td style="border: none !important" colspan="4">
            <button onclick={() => rows += 1} style="width: 100%">+</button>
        </td>
    </tr>
    <tr>
        <td>
            <div><textarea placeholder="Schlussrunde"></textarea></div>
        </td>
        <td>
            <div><textarea placeholder="Schlussrunde"></textarea></div>
        </td>
        <td>
            <div><textarea placeholder="Schlussrunde"></textarea></div>
        </td>
        <td>
            <div><textarea placeholder="Schlussrunde"></textarea></div>
        </td>
    </tr>
    <tr>
        <td><Scoring/></td>
        <td><Scoring/></td>
        <td><Scoring/></td>
        <td><Scoring/></td>
    </tr>
    </tbody>
</table>

<style>
    th {
        text-align: left;
        font-weight: bold;
        width: 25%;
    }

    th div, td div {
        display: flex;
        flex-direction: column;
    }

    th input, td textarea {
        border: none;
        min-height: 24px;
    }

    td {
        border: 0.5px solid #000000;
        flex: 1;
    }

    td textarea {
        resize: vertical;
        min-height: 64px;
        height: auto;
        overflow: auto;
        background: transparent;
    }
</style>