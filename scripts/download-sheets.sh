#!/usr/bin/env bash
set -e

# CSV URLs (published from Google Sheets)
SAUCEDMO_CSV_URL="https://docs.google.com/spreadsheets/d/e/2PACX-1vTANY1hpnZMqQeXzg07pSYJyt50_O0ccXW_Gw3b8onzgHsNx_or096MmYkgHysJ-rmkI-VVE0Sp_qWt/pub?gid=0&single=true&output=csv"
TRACE_SDCM_CSV_URL="https://docs.google.com/spreadsheets/d/e/2PACX-1vTDbdJhL0n7JCDjeWqeoEzAjgxyuaA5TLn6mAf4ilJ8dHJUPevydcQurAXif-TGEY5RuIex3KOolsPM/pub?gid=0&single=true&output=csv"
REQRES_CSV_URL="https://docs.google.com/spreadsheets/d/e/2PACX-1vQz2i2qMK92U-Ak9OCkisBLwK2p9BdRngcl23EGVE_dbKwtHlc0Q9nb3-UKuII_ZB7KdejcigH-nVXR/pub?gid=0&single=true&output=csv"
TRACE_RQRS_CSV_URL="https://docs.google.com/spreadsheets/d/e/2PACX-1vSewVJvAlCXiR7i6H-reyfe1WxNj0xodDzOWz2k8G3LpsJKvXjc6qm1dSUmvWCQOQ_8YGszI7IaSEAW/pub?gid=0&single=true&output=csv"

# Destinations in your repo
DEST1="saucedemo-ui-testing/test-cases-saucedemo.csv"
DEST2="saucedemo-ui-testing/traceability-matrix-saucedemo.csv"
DEST3="reqres-api-testing/test-cases-reqres.csv"
DEST4="reqres-api-testing/traceability-matrix-reqres.csv"

echo "Downloading Google Sheets → CSV…"

curl -sL "$SAUCEDMO_CSV_URL"     -o "$DEST1"
curl -sL "$TRACE_SDCM_CSV_URL"    -o "$DEST2"
curl -sL "$REQRES_CSV_URL"        -o "$DEST3"
curl -sL "$TRACE_RQRS_CSV_URL"    -o "$DEST4"

echo "✅ Done. Updated files:"
echo "   • $DEST1"
echo "   • $DEST2"
echo "   • $DEST3"
echo "   • $DEST4"
