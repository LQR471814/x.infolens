# ===== Required ENVS ======
export NUM_WORKERS_PER_QUEUE=8
export HOST=0.0.0.0
export REDIS_URL=redis://localhost:6379
export REDIS_RATE_LIMIT_URL=redis://localhost:6379
export PLAYWRIGHT_MICROSERVICE_URL=http://localhost:3000/html
export USE_DB_AUTHENTICATION=false

mprocs -c ./mprocs.yaml

