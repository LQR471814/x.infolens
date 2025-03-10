# ===== Required ENVS ======
export NUM_WORKERS_PER_QUEUE=8
export PORT=3002
export HOST=0.0.0.0
export REDIS_URL=redis://localhost:6379
export REDIS_RATE_LIMIT_URL=redis://localhost:6379

## To turn on DB authentication, you need to set up supabase.
export USE_DB_AUTHENTICATION=false

cd repo && docker compose up
