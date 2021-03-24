#!/bin/bash
#config-map, secret, OBC will part of default if no specific name space mentioned
export AWS_HOST=rook-ceph-rgw-my-store.rook-ceph.svc
export AWS_ACCESS_KEY_ID=5BOHOPF4SGBG7VEI96TL
export AWS_ENDPOINT=10.98.136.253:30216
export AWS_SECRET_ACCESS_KEY=FOIC5OiEWF67YumCKaOhyvPEDUy7EvzbtJVqiLb9


export AWS_HOST=$(kubectl -n rook-ceph get cm ceph-bucket -o jsonpath='{.data.BUCKET_HOST}')
export AWS_ENDPOINT=10.98.136.253:30216
export AWS_ACCESS_KEY_ID=$(kubectl -n rook-ceph get secret ceph-bucket -o jsonpath='{.data.AWS_ACCESS_KEY_ID}' | base64 --decode)
export AWS_SECRET_ACCESS_KEY=$(kubectl -n rook-ceph get secret ceph-bucket -o jsonpath='{.data.AWS_SECRET_ACCESS_KEY}' | base64 --decode)
