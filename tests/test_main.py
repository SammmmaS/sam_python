from app.main import hello

def test_hello():
    assert hello("World") == "Hello, World!"