from dotenv import load_dotenv
import infolens.pages as pages

def main() -> None:
    load_dotenv()
    load_dotenv(dotenv_path=".env.local")

    pages.dump_content()

