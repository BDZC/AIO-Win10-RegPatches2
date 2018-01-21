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

if(isset($_GET['id'])) {
    $desiredGuid = $_GET['id'];
} elseif(isset($argv[1])) {
    $desiredGuid = $argv[1];
} else {
    $desiredGuid = '49924c88-1b31-4b0f-ad3d-48df9877f385';
}

$req = curl_init('http://www.catalog.update.microsoft.com/DownloadDialog.aspx');
$updateIds = '[{"size":0,"languages":"","uidInfo":"'.$desiredGuid.'","updateID":"'.$desiredGuid.'"}]';
$post = 'updateIDs='.urlencode($updateIds);

curl_setopt($req, CURLOPT_HEADER, 0);
curl_setopt($req, CURLOPT_POST, true);
curl_setopt($req, CURLINFO_HEADER_OUT, true);
curl_setopt($req, CURLOPT_RETURNTRANSFER, true);
curl_setopt($req, CURLOPT_FOLLOWLOCATION, true);
curl_setopt($req, CURLOPT_POSTREDIR, 7);
curl_setopt($req, CURLOPT_POSTFIELDS, $post);

$out = curl_exec($req);

header('Content-Type: text/plain');
preg_match_all('/downloadInformation.*?url = \'.*?;/', $out, $linksList);

if(empty($linksList[0])) {
    echo 'NO_LINKS';
    die();
}

$linksList = preg_replace('/downloadInformation.*?url = \'|\';$/', '', $linksList[0]);
foreach($linksList as $link) {
    echo($link)."\n";
}
?>
