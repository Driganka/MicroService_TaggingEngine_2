from fastapi import FastAPI
from routes.tagsroutes import tagsrouter
from routes.productsroutes import productsrouter

app = FastAPI()

#app.include_router(tagsrouter)

app.include_router(productsrouter, prefix="/products", tags=["PRODUCTS WITH TAGS"])
app.include_router(tagsrouter, prefix="/users", tags=["USERS WITH TAGS"])