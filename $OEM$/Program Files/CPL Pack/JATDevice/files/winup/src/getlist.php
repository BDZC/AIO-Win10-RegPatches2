<?php
// Copyright 2017 mkuba50

// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at

//    http://www.apache.org/licenses/LICENSE-2.0

// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

if(isset($_GET['kb'])) {
    $desiredKb = $_GET['kb'];
} elseif(isset($argv[1])) {
    $desiredKb = $argv[1];
} else {
    $desiredKb = 'KB3125574';
}

$req = curl_init('http://www.catalog.update.microsoft.com/Search.aspx?q='.urlencode($desiredKb));

curl_setopt($req, CURLOPT_HEADER, 0);
curl_setopt($req, CURLINFO_HEADER_OUT, true);
curl_setopt($req, CURLOPT_RETURNTRANSFER, true);
curl_setopt($req, CURLOPT_FOLLOWLOCATION, true);

$out = curl_exec($req);

$out = preg_replace('/\n|\r|\t|\s{4}/', '', $out);

header('Content-Type: text/plain');
preg_match_all('/goToDetails\(".*?"\);.*?<\/a>/', $out, $updateList);

if(empty($updateList[0])) {
    echo 'NO_RESULTS';
    die();
}

$updateList = preg_replace('/goToDetails\("|<\/a>/', '', $updateList[0]);
$updateList = preg_replace('/"\);\'>/', ' = ', $updateList);

foreach($updateList as $update) {
    echo($update)."\n";
}
?>
