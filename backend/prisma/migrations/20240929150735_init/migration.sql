/*
  Warnings:

  - You are about to drop the column `assignee` on the `rawData` table. All the data in the column will be lost.
  - You are about to drop the column `brand_list` on the `rawData` table. All the data in the column will be lost.
  - You are about to drop the column `created` on the `rawData` table. All the data in the column will be lost.
  - You are about to drop the column `expected_live` on the `rawData` table. All the data in the column will be lost.
  - You are about to drop the column `first_response` on the `rawData` table. All the data in the column will be lost.
  - You are about to drop the column `investigation_type` on the `rawData` table. All the data in the column will be lost.
  - You are about to drop the column `last_view` on the `rawData` table. All the data in the column will be lost.
  - You are about to drop the column `organizations` on the `rawData` table. All the data in the column will be lost.
  - You are about to drop the column `priority` on the `rawData` table. All the data in the column will be lost.
  - You are about to drop the column `project_key` on the `rawData` table. All the data in the column will be lost.
  - You are about to drop the column `reporter` on the `rawData` table. All the data in the column will be lost.
  - You are about to drop the column `reporter_id` on the `rawData` table. All the data in the column will be lost.
  - You are about to drop the column `resolved` on the `rawData` table. All the data in the column will be lost.
  - You are about to drop the column `status` on the `rawData` table. All the data in the column will be lost.
  - You are about to drop the column `status_category` on the `rawData` table. All the data in the column will be lost.
  - You are about to drop the column `store_list` on the `rawData` table. All the data in the column will be lost.
  - You are about to drop the column `updated` on the `rawData` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "rawData" DROP COLUMN "assignee",
DROP COLUMN "brand_list",
DROP COLUMN "created",
DROP COLUMN "expected_live",
DROP COLUMN "first_response",
DROP COLUMN "investigation_type",
DROP COLUMN "last_view",
DROP COLUMN "organizations",
DROP COLUMN "priority",
DROP COLUMN "project_key",
DROP COLUMN "reporter",
DROP COLUMN "reporter_id",
DROP COLUMN "resolved",
DROP COLUMN "status",
DROP COLUMN "status_category",
DROP COLUMN "store_list",
DROP COLUMN "updated";
