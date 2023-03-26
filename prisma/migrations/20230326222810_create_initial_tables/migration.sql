-- CreateTable
CREATE TABLE "MarvelSnapCard" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "lifespan_start" TIMESTAMP(3) NOT NULL,
    "lifespan_end" TIMESTAMP(3) NOT NULL,
    "snapfan_data" JSONB NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,
    "deleted_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "MarvelSnapCard_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MarvelSnapCardCardSeries" (
    "id" TEXT NOT NULL,
    "marvel_snap_card_id" TEXT NOT NULL,
    "marvel_snap_series_id" TEXT NOT NULL,
    "lifespan_start" TIMESTAMP(3) NOT NULL,
    "lifespan_end" TIMESTAMP(3) NOT NULL,
    "snapfan_data" JSONB NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,
    "deleted_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "MarvelSnapCardCardSeries_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MarvelSnapCardSeries" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "lifespan_start" TIMESTAMP(3) NOT NULL,
    "lifespan_end" TIMESTAMP(3) NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,
    "deleted_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "MarvelSnapCardSeries_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MarvelSnapCardVariant" (
    "id" TEXT NOT NULL,
    "marvel_snap_card_id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "lifespan_start" TIMESTAMP(3) NOT NULL,
    "lifespan_end" TIMESTAMP(3) NOT NULL,
    "snapfan_data" JSONB NOT NULL,
    "internal_data" JSONB NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,
    "deleted_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "MarvelSnapCardVariant_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_MarvelSnapCardToMarvelSnapCardSeries" (
    "A" TEXT NOT NULL,
    "B" TEXT NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "_MarvelSnapCardToMarvelSnapCardSeries_AB_unique" ON "_MarvelSnapCardToMarvelSnapCardSeries"("A", "B");

-- CreateIndex
CREATE INDEX "_MarvelSnapCardToMarvelSnapCardSeries_B_index" ON "_MarvelSnapCardToMarvelSnapCardSeries"("B");

-- AddForeignKey
ALTER TABLE "MarvelSnapCardCardSeries" ADD CONSTRAINT "MarvelSnapCardCardSeries_marvel_snap_card_id_fkey" FOREIGN KEY ("marvel_snap_card_id") REFERENCES "MarvelSnapCard"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MarvelSnapCardCardSeries" ADD CONSTRAINT "MarvelSnapCardCardSeries_marvel_snap_series_id_fkey" FOREIGN KEY ("marvel_snap_series_id") REFERENCES "MarvelSnapCardSeries"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MarvelSnapCardVariant" ADD CONSTRAINT "MarvelSnapCardVariant_marvel_snap_card_id_fkey" FOREIGN KEY ("marvel_snap_card_id") REFERENCES "MarvelSnapCard"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_MarvelSnapCardToMarvelSnapCardSeries" ADD CONSTRAINT "_MarvelSnapCardToMarvelSnapCardSeries_A_fkey" FOREIGN KEY ("A") REFERENCES "MarvelSnapCard"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_MarvelSnapCardToMarvelSnapCardSeries" ADD CONSTRAINT "_MarvelSnapCardToMarvelSnapCardSeries_B_fkey" FOREIGN KEY ("B") REFERENCES "MarvelSnapCardSeries"("id") ON DELETE CASCADE ON UPDATE CASCADE;
