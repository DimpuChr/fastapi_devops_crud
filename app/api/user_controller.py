from fastapi import APIRouter

router = APIRouter()


@router.get("/getName")
async def getName():
    return "Hi Darshan How Are you"
