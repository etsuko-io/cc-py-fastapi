from fastapi.routing import APIRoute


routes = [
    APIRoute(
        path="/",
        endpoint=lambda: {"hello": "world"},
        methods=["GET"],
        include_in_schema=True,
    ),
]
