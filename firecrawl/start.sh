# ===== Required ENVS ======
# export NUM_WORKERS_PER_QUEUE=8
# export HOST=127.0.0.1

export NUM_WORKERS_PER_QUEUE=8
export PORT=3002
export HOST=0.0.0.0
export REDIS_URL=redis://localhost:6379
export REDIS_RATE_LIMIT_URL=redis://localhost:6379
export PLAYWRIGHT_MICROSERVICE_URL=http://localhost:3000/html
export USE_DB_AUTHENTICATION=false

dir=$(pwd)
cd $dir/repo/apps/playwright-service-ts && pnpm install
cd $dir/repo/apps/playwright-service-ts && pnpm exec playwright install
cd $dir/repo/apps/playwright-service-ts && pnpm run build
cd $dir/repo/apps/api && pnpm install
cd $dir

mprocs -c ./mprocs.yaml

