dir=$(pwd)
cd $dir/repo/apps/playwright-service-ts && pnpm install
cd $dir/repo/apps/playwright-service-ts && pnpm exec playwright install
cd $dir/repo/apps/playwright-service-ts && pnpm run build
cd $dir/repo/apps/api && pnpm install
cd $dir/repo/apps/api/sharedLibs/html-transformer && cargo build
cd $dir/repo/apps/api/sharedLibs/go-html-to-md && \
    go build -o html-to-markdown.so -buildmode=c-shared html-to-markdown.go \
    chmod +x html-to-markdown.so

