<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport"
          content="width=device-width", user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0>
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Verkefni 5</title>
    <link rel="stylesheet" href="/static/styles.css">
</head>
<body>

    % for event in data['results']:
        <div class="event">
            <h2>{{event['eventHallName']}}</h2>
            <h2>{{event['eventDateName']}}</h2>
            <h2>{{event['dateOfShow'][:10]}}</h2>
            <h3>kl. {{event['dateOfShow'][11:16]}}</h3>
            <img src="{{event['imageSource']}}" alt="{{event['eventDateName']}}">
        </div>
    %end

</body>
</html>