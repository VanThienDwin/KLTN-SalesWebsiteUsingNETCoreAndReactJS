﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using server.Data;

namespace server.Migrations
{
    [DbContext(typeof(ShopDbContext))]
    partial class ShopDbContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "3.1.3")
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityRoleClaim<System.Guid>", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("ClaimType")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("ClaimValue")
                        .HasColumnType("nvarchar(max)");

                    b.Property<Guid>("RoleId")
                        .HasColumnType("uniqueidentifier");

                    b.HasKey("Id");

                    b.ToTable("AppRoleClaims");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserClaim<System.Guid>", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("ClaimType")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("ClaimValue")
                        .HasColumnType("nvarchar(max)");

                    b.Property<Guid>("UserId")
                        .HasColumnType("uniqueidentifier");

                    b.HasKey("Id");

                    b.ToTable("AppUserClaims");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserLogin<System.Guid>", b =>
                {
                    b.Property<Guid>("UserId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier");

                    b.Property<string>("LoginProvider")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("ProviderDisplayName")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("ProviderKey")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("UserId");

                    b.ToTable("AppUserLogins");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserRole<System.Guid>", b =>
                {
                    b.Property<Guid>("RoleId")
                        .HasColumnType("uniqueidentifier");

                    b.Property<Guid>("UserId")
                        .HasColumnType("uniqueidentifier");

                    b.HasKey("RoleId", "UserId");

                    b.ToTable("AppUserRoles");

                    b.HasData(
                        new
                        {
                            RoleId = new Guid("078269d8-1a12-4592-b92e-7ff1a876a5f2"),
                            UserId = new Guid("4557893f-1f56-4b6f-bb3b-caefd62c8c49")
                        });
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserToken<System.Guid>", b =>
                {
                    b.Property<Guid>("UserId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier");

                    b.Property<string>("LoginProvider")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Name")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Value")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("UserId");

                    b.ToTable("AppUserTokens");
                });

            modelBuilder.Entity("server.Models.AppRole", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier");

                    b.Property<string>("ConcurrencyStamp")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("CreationDate")
                        .HasColumnType("datetime2");

                    b.Property<string>("Description")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Name")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("NormalizedName")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.ToTable("Roles");

                    b.HasData(
                        new
                        {
                            Id = new Guid("078269d8-1a12-4592-b92e-7ff1a876a5f2"),
                            ConcurrencyStamp = "cdca1b34-6e34-4b76-b1ea-c115fe524b5f",
                            CreationDate = new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified),
                            Description = "Administrator role",
                            Name = "Admin",
                            NormalizedName = "Admin"
                        },
                        new
                        {
                            Id = new Guid("6d9186ba-2cd6-4b6c-b729-4e605de1019f"),
                            ConcurrencyStamp = "c2541a1f-8ee1-4dbf-a014-b0f36134379b",
                            CreationDate = new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified),
                            Description = "User role",
                            Name = "User",
                            NormalizedName = "User"
                        });
                });

            modelBuilder.Entity("server.Models.AppUser", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier");

                    b.Property<int>("AccessFailedCount")
                        .HasColumnType("int");

                    b.Property<string>("ConcurrencyStamp")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Email")
                        .HasColumnType("nvarchar(max)");

                    b.Property<bool>("EmailConfirmed")
                        .HasColumnType("bit");

                    b.Property<bool>("LockoutEnabled")
                        .HasColumnType("bit");

                    b.Property<DateTimeOffset?>("LockoutEnd")
                        .HasColumnType("datetimeoffset");

                    b.Property<string>("NormalizedEmail")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("NormalizedUserName")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("PasswordHash")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("PhoneNumber")
                        .HasColumnType("nvarchar(max)");

                    b.Property<bool>("PhoneNumberConfirmed")
                        .HasColumnType("bit");

                    b.Property<string>("SecurityStamp")
                        .HasColumnType("nvarchar(max)");

                    b.Property<bool>("TwoFactorEnabled")
                        .HasColumnType("bit");

                    b.Property<string>("UserName")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("address")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("avatar")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("birthDay")
                        .HasColumnType("datetime2");

                    b.Property<string>("displayname")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<bool>("gender")
                        .HasColumnType("bit");

                    b.Property<string>("phone")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("status")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.ToTable("Users");

                    b.HasData(
                        new
                        {
                            Id = new Guid("4557893f-1f56-4b6f-bb3b-caefd62c8c49"),
                            AccessFailedCount = 0,
                            ConcurrencyStamp = "0142debb-17d8-4bcc-a6f2-6d435e059f42",
                            Email = "16110472@student.hcmute.deu.vn",
                            EmailConfirmed = true,
                            LockoutEnabled = false,
                            NormalizedEmail = "some-admin-email@nonce.fake",
                            NormalizedUserName = "admin",
                            PasswordHash = "AQAAAAEAACcQAAAAEG0O7W8Oi/XfKzq4v52jWzRk+JXhrILEOgeLMvNffPUNTNsdR4UKs0ZEjlwtIHC8Iw==",
                            PhoneNumberConfirmed = false,
                            SecurityStamp = "",
                            TwoFactorEnabled = false,
                            UserName = "admin",
                            birthDay = new DateTime(1998, 2, 2, 0, 0, 0, 0, DateTimeKind.Unspecified),
                            displayname = "Admin",
                            gender = false,
                            status = 0
                        });
                });

            modelBuilder.Entity("server.Models.Category", b =>
                {
                    b.Property<int>("id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("generalityName")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("status")
                        .HasColumnType("int");

                    b.HasKey("id");

                    b.ToTable("categories");

                    b.HasData(
                        new
                        {
                            id = 1,
                            generalityName = "Quần áo",
                            name = "Áo sơ mi",
                            status = 0
                        },
                        new
                        {
                            id = 2,
                            generalityName = "Quần áo",
                            name = "Quần tây",
                            status = 0
                        },
                        new
                        {
                            id = 3,
                            generalityName = "Quần áo",
                            name = "Áo thun",
                            status = 0
                        },
                        new
                        {
                            id = 4,
                            generalityName = "Quần áo",
                            name = "Quần kaki",
                            status = 0
                        });
                });

            modelBuilder.Entity("server.Models.Chat", b =>
                {
                    b.Property<int>("id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("content")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("createDate")
                        .HasColumnType("datetime2");

                    b.Property<Guid>("receiverId")
                        .HasColumnType("uniqueidentifier");

                    b.Property<Guid>("senderId")
                        .HasColumnType("uniqueidentifier");

                    b.HasKey("id");

                    b.HasIndex("receiverId");

                    b.HasIndex("senderId");

                    b.ToTable("chats");
                });

            modelBuilder.Entity("server.Models.Evaluation", b =>
                {
                    b.Property<int>("id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("content")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("createDate")
                        .HasColumnType("datetime2");

                    b.Property<int>("productId")
                        .HasColumnType("int");

                    b.Property<int>("rating")
                        .HasColumnType("int");

                    b.Property<int>("status")
                        .HasColumnType("int");

                    b.Property<string>("title")
                        .HasColumnType("nvarchar(max)");

                    b.Property<Guid>("userId")
                        .HasColumnType("uniqueidentifier");

                    b.HasKey("id");

                    b.HasIndex("productId");

                    b.HasIndex("userId");

                    b.ToTable("evaluations");
                });

            modelBuilder.Entity("server.Models.Image", b =>
                {
                    b.Property<int>("id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int?>("productId")
                        .HasColumnType("int");

                    b.Property<int>("status")
                        .HasColumnType("int");

                    b.Property<string>("urlImage")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("id");

                    b.HasIndex("productId");

                    b.ToTable("images");
                });

            modelBuilder.Entity("server.Models.Order", b =>
                {
                    b.Property<int>("id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("address")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("createDate")
                        .HasColumnType("datetime2");

                    b.Property<DateTime>("deliveryDate")
                        .HasColumnType("datetime2");

                    b.Property<string>("email")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("feeShip")
                        .HasColumnType("int");

                    b.Property<string>("guess")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("note")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("phone")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("status")
                        .HasColumnType("int");

                    b.Property<string>("street")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("total")
                        .HasColumnType("int");

                    b.Property<Guid?>("userId")
                        .HasColumnType("uniqueidentifier");

                    b.HasKey("id");

                    b.HasIndex("userId");

                    b.ToTable("orders");
                });

            modelBuilder.Entity("server.Models.OrderDetail", b =>
                {
                    b.Property<int>("id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("orderId")
                        .HasColumnType("int");

                    b.Property<int>("productId")
                        .HasColumnType("int");

                    b.Property<int>("quantity")
                        .HasColumnType("int");

                    b.Property<int>("sale")
                        .HasColumnType("int");

                    b.Property<int>("unitPrice")
                        .HasColumnType("int");

                    b.HasKey("id");

                    b.HasIndex("orderId");

                    b.HasIndex("productId");

                    b.ToTable("orderDetails");
                });

            modelBuilder.Entity("server.Models.Product", b =>
                {
                    b.Property<int>("id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("amount")
                        .HasColumnType("int");

                    b.Property<int?>("categoryId")
                        .HasColumnType("int");

                    b.Property<int?>("color")
                        .HasColumnType("int");

                    b.Property<string>("description")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("importPrice")
                        .HasColumnType("int");

                    b.Property<string>("name")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("price")
                        .HasColumnType("int");

                    b.Property<int?>("providerId")
                        .HasColumnType("int");

                    b.Property<int?>("rating")
                        .HasColumnType("int");

                    b.Property<int>("sale")
                        .HasColumnType("int");

                    b.Property<int?>("size")
                        .HasColumnType("int");

                    b.Property<int>("status")
                        .HasColumnType("int");

                    b.Property<int>("viewCount")
                        .HasColumnType("int");

                    b.HasKey("id");

                    b.HasIndex("categoryId");

                    b.HasIndex("providerId");

                    b.ToTable("products");

                    b.HasData(
                        new
                        {
                            id = 1,
                            amount = 0,
                            categoryId = 1,
                            color = 6,
                            description = "mô tả sản phẩm 1",
                            importPrice = 100000,
                            name = "Áo sơ mi",
                            price = 150000,
                            providerId = 1,
                            rating = 5,
                            sale = 0,
                            size = 2,
                            status = 0,
                            viewCount = 0
                        },
                        new
                        {
                            id = 2,
                            amount = 0,
                            categoryId = 1,
                            color = 2,
                            description = "mô tả sản phẩm 2",
                            importPrice = 80000,
                            name = "Áo sơ mi tay ngắn",
                            price = 120000,
                            providerId = 2,
                            rating = 5,
                            sale = 0,
                            size = 0,
                            status = 0,
                            viewCount = 0
                        },
                        new
                        {
                            id = 3,
                            amount = 0,
                            categoryId = 2,
                            color = 6,
                            description = "mô tả sản phẩm 3",
                            importPrice = 200000,
                            name = "Quần tây",
                            price = 250000,
                            providerId = 3,
                            rating = 5,
                            sale = 0,
                            size = 2,
                            status = 0,
                            viewCount = 0
                        },
                        new
                        {
                            id = 4,
                            amount = 0,
                            categoryId = 3,
                            color = 1,
                            description = "mô tả sản phẩm 4",
                            importPrice = 50000,
                            name = "Áo thun",
                            price = 75000,
                            providerId = 4,
                            rating = 5,
                            sale = 0,
                            size = 2,
                            status = 0,
                            viewCount = 0
                        },
                        new
                        {
                            id = 5,
                            amount = 0,
                            categoryId = 4,
                            color = 7,
                            description = "mô tả sản phẩm 5",
                            importPrice = 180000,
                            name = "Quần kaki",
                            price = 220000,
                            providerId = 5,
                            rating = 5,
                            sale = 0,
                            size = 2,
                            status = 0,
                            viewCount = 0
                        });
                });

            modelBuilder.Entity("server.Models.Provider", b =>
                {
                    b.Property<int>("id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("status")
                        .HasColumnType("int");

                    b.HasKey("id");

                    b.ToTable("providers");

                    b.HasData(
                        new
                        {
                            id = 1,
                            name = "Việt Tiến",
                            status = 0
                        },
                        new
                        {
                            id = 2,
                            name = "Cty May Sông Hồng",
                            status = 0
                        },
                        new
                        {
                            id = 3,
                            name = "Cty May Nhà Bè",
                            status = 0
                        },
                        new
                        {
                            id = 4,
                            name = "Cty Giditex",
                            status = 0
                        },
                        new
                        {
                            id = 5,
                            name = "Cty Vinatex",
                            status = 0
                        });
                });

            modelBuilder.Entity("server.Models.Reply", b =>
                {
                    b.Property<int>("id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("content")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("createDate")
                        .HasColumnType("datetime2");

                    b.Property<int>("evaluationId")
                        .HasColumnType("int");

                    b.Property<int>("status")
                        .HasColumnType("int");

                    b.Property<Guid>("userId")
                        .HasColumnType("uniqueidentifier");

                    b.HasKey("id");

                    b.HasIndex("evaluationId");

                    b.HasIndex("userId");

                    b.ToTable("replies");
                });

            modelBuilder.Entity("server.Models.Chat", b =>
                {
                    b.HasOne("server.Models.AppUser", "receiver")
                        .WithMany()
                        .HasForeignKey("receiverId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("server.Models.AppUser", "sender")
                        .WithMany()
                        .HasForeignKey("senderId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("server.Models.Evaluation", b =>
                {
                    b.HasOne("server.Models.Product", "product")
                        .WithMany("Evaluations")
                        .HasForeignKey("productId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("server.Models.AppUser", "user")
                        .WithMany()
                        .HasForeignKey("userId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("server.Models.Image", b =>
                {
                    b.HasOne("server.Models.Product", "product")
                        .WithMany("Images")
                        .HasForeignKey("productId");
                });

            modelBuilder.Entity("server.Models.Order", b =>
                {
                    b.HasOne("server.Models.AppUser", "user")
                        .WithMany("Orders")
                        .HasForeignKey("userId");
                });

            modelBuilder.Entity("server.Models.OrderDetail", b =>
                {
                    b.HasOne("server.Models.Order", "order")
                        .WithMany("OrderDetails")
                        .HasForeignKey("orderId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("server.Models.Product", "product")
                        .WithMany()
                        .HasForeignKey("productId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("server.Models.Product", b =>
                {
                    b.HasOne("server.Models.Category", "category")
                        .WithMany("Products")
                        .HasForeignKey("categoryId");

                    b.HasOne("server.Models.Provider", "provider")
                        .WithMany()
                        .HasForeignKey("providerId");
                });

            modelBuilder.Entity("server.Models.Reply", b =>
                {
                    b.HasOne("server.Models.Evaluation", "evaluation")
                        .WithMany("Replies")
                        .HasForeignKey("evaluationId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("server.Models.AppUser", "user")
                        .WithMany()
                        .HasForeignKey("userId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });
#pragma warning restore 612, 618
        }
    }
}
