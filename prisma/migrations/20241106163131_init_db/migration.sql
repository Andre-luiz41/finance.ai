-- CreateEnum
CREATE TYPE "TransactionType" AS ENUM ('deposit', 'expense', 'investment');

-- CreateEnum
CREATE TYPE "TransactionCategory" AS ENUM ('housing', 'transportation', 'food', 'entertainment', 'health', 'utility', 'salary', 'education', 'other');

-- CreateEnum
CREATE TYPE "TransactionPaymentMethod" AS ENUM ('credit_card', 'debit_card', 'bank_transfer', 'bank_slip', 'cash', 'pix', 'other');

-- CreateTable
CREATE TABLE "Transaction" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "type" "TransactionType" NOT NULL,
    "amount" DECIMAL(10,2) NOT NULL,
    "category" "TransactionCategory" NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,
    "created" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "paymentMethod" "TransactionPaymentMethod",

    CONSTRAINT "Transaction_pkey" PRIMARY KEY ("id")
);
