from fastapi import APIRouter

router = APIRouter()


@router.get("/getName")
async def get_name():
    return "Hi Darshan How Are you"
